import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_graphql/GraphQL/DeleteComment.graphql.dart';
import 'package:github_graphql/GraphQL/DeleteIssue.graphql.dart';
import 'package:github_graphql/GraphQL/GetIssue.graphql.dart';
import 'package:github_graphql/add_comment.dart';
import 'package:github_graphql/edit_comment.dart';
import 'package:github_graphql/edit_issue.dart';
import 'package:markdown_widget/markdown_widget.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'expandable_fab.dart';

class IssueDetailPage extends HookWidget {
  const IssueDetailPage(this.id, this.title, {super.key});
  final String id;
  final String title;

  @override
  Widget build(BuildContext context) {
    final comments = useState<List<Query$GetIssueAndCommentsByID$node$$Issue$comments$nodes?>>([]);

    final queryResult = useQuery$GetIssueAndCommentsByID(
      Options$Query$GetIssueAndCommentsByID(
        variables: Variables$Query$GetIssueAndCommentsByID(
          id: id,
          after: null,
        ),
      ),
    );
    final result = queryResult.result;

    final node = result.parsedData?.node;

    final delCommentMutation = useMutation$DeleteIssueComment(); // ← useMutationはここで呼び出す必要あり
    final runDelComment = delCommentMutation.runMutation;

    void fetchMore() {
      if (node is Query$GetIssueAndCommentsByID$node$$Issue) {
        queryResult.fetchMore(
          FetchMoreOptions$Query$GetIssueAndCommentsByID(
            variables: Variables$Query$GetIssueAndCommentsByID(
                id: id,
                after: node.comments.pageInfo.endCursor
            ),
            updateQuery: (previousResultData, fetchMoreResultData) {
              final previous = Query$GetIssueAndCommentsByID.fromJson(previousResultData!);
              final fetchMore = Query$GetIssueAndCommentsByID.fromJson(fetchMoreResultData!);

              final prevNode = previous.node;
              final moreNode = fetchMore.node;

              if (prevNode is Query$GetIssueAndCommentsByID$node$$Issue && moreNode is Query$GetIssueAndCommentsByID$node$$Issue) {
                moreNode.comments.nodes?.insertAll(0, prevNode.comments.nodes ?? []);
              }

              return fetchMore.toJson();
            },
          ),
        );
      }
    }

    Widget list;

    if (result.isLoading && result.parsedData == null) {
      list = const Center(child: CircularProgressIndicator());
      // list = const Center(child: Text('Loading...'));
    } else if (result.hasException) {
      list = Text(result.exception.toString());
    } else {
      if (node is Query$GetIssueAndCommentsByID$node$$Issue) {
        comments.value = node.comments.nodes ?? [];
      }
      final listChildren = comments.value.expand((e) {
        List<PopupMenuItem> menu = [];
        if (e!.viewerCanUpdate) {
          menu.add(const PopupMenuItem(value: "edit",child: Text("Edit")));
        }
        if (e.viewerCanDelete) {
          menu.add(const PopupMenuItem(value: "delete",child: Text("Delete")));
        }
        return <Widget>[
        // const Divider(height: 0.5),
        const Padding(padding: EdgeInsets.all(16)),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: CupertinoColors.systemBackground,
          ),
          child: Column(children: [
            ListTile(
              title: Text(e.author?.login ?? ""),
              trailing: PopupMenuButton(
                onSelected: (item) async {
                  if (item is String) {
                    switch (item) {
                      case "edit":
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditCommentPage(e.id, e.body),
                            fullscreenDialog: true,
                          ),
                        );
                        queryResult.refetch();
                        break;
                      case "delete":
                        showDialog(context: context, builder: (context) {
                          return AlertDialog(
                            title: const Text('Do you want to delete this Comment?'),
                            content: const Text('This operation cannot be undone.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  },
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () {
                                  runDelComment(
                                      Variables$Mutation$DeleteIssueComment(id: e.id)
                                  );
                                  final result = delCommentMutation.result;
                                  if (!result.hasException) {
                                    showDialog(context: context, builder: (context) {
                                      return AlertDialog(
                                        title: const Text('Success'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                              queryResult.refetch();
                                            },
                                            child: const Text('OK')
                                          )
                                        ],
                                      );
                                    });
                                  } else {
                                    showDialog(context: context, builder: (context) {
                                      return AlertDialog(
                                        title: const Text('Error'),
                                        content: Text(result.exception.toString()),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              //Navigator.of(context).pop();
                                              Navigator.pop(context);
                                            },
                                            child: const Text('OK')
                                          )
                                        ],
                                      );
                                    });
                                  }
                                  },
                                child: const Text('Delete', style: TextStyle(color: Colors.red),),
                              ),
                            ],
                          );
                        });
                        break;
                      default:
                        break;
                    }
                  }
                },
                itemBuilder:
                    (BuildContext context) => menu,
                enabled: menu.isNotEmpty,
              ),
            ),
            Divider(height: 0.5,),
            ListTile(title: MarkdownWidget(data: e.body ?? "", shrinkWrap: true,),),
          ],)
        ),
      ];
      }).toList();

      if (node is Query$GetIssueAndCommentsByID$node$$Issue) {
        listChildren.insertAll(0, [
          // const Divider(height: 0.5,),
          const Padding(padding: EdgeInsets.all(16)),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: CupertinoColors.systemBackground,
            ),
            child: Column(children: [
              ListTile(
                title: Text(node.author?.login ?? ""),
              ),
              Divider(height: 0.5,),
              ListTile(
                title: MarkdownWidget(data: node.body.isEmpty ? '_No description provided._' : node.body, shrinkWrap: true,),
              ),
            ],)
          ),
          // MarkdownWidget(data: node.body.isEmpty ? '_No description provided._' : node.body, shrinkWrap: true,),
        ]);
      }

      // listChildren.add(const Divider(height: 0.5));
      if (node is Query$GetIssueAndCommentsByID$node$$Issue && node.comments.pageInfo.hasNextPage) {
        listChildren.add(Padding(padding: EdgeInsets.all(8), child: ElevatedButton(
          onPressed: () {
            fetchMore();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Load More'),
            ],
          ),
        )));
      }

      list = ListView(children: listChildren);
    }

    final body = RefreshIndicator(onRefresh: queryResult.refetch, child: list);

    final delIssueMutation = useMutation$DeleteIssue(); // ← useMutationはここで呼び出す必要あり
    final runDelIssue = delIssueMutation.runMutation;

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          color: CupertinoColors.systemGroupedBackground,
          child: body
      ),
      floatingActionButton: ExpandableFab(
        distance: 112,
        children: [
          ActionButton(
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddCommentPage(id),
                  fullscreenDialog: true,
                ),
              );
              // popで戻ってきた時の処理
              queryResult.refetch();
            },
            icon: const Icon(Icons.add_comment),
            tooltip: "Add Comment",
          ),
          ActionButton(
            onPressed: () async {
              if (node is Query$GetIssueAndCommentsByID$node$$Issue) {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditIssuePage(id, title, node.body),
                    fullscreenDialog: true,
                  ),
                );
                // popで戻ってきた時の処理
                queryResult.refetch();
              }
            },
            icon: const Icon(Icons.edit),
            tooltip: "Edit Issue",
            disabled: !(node is Query$GetIssueAndCommentsByID$node$$Issue && node.viewerCanUpdate),
          ),
          ActionButton(
            onPressed: () {
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: const Text('Do you want to delete this Issue?'),
                  content: const Text('This operation cannot be undone.'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        runDelIssue(
                          Variables$Mutation$DeleteIssue(issueId: id)
                        );
                        final result = delIssueMutation.result;
                        if (!result.hasException) {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              title: const Text('Success'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                      Navigator.pop(context, id);
                                    },
                                    child: const Text('OK'))
                              ],
                            );
                          });
                        } else {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              title: const Text('Error'),
                              content: Text(result.exception.toString()),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      //Navigator.of(context).pop();
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'))
                              ],
                            );
                          });
                        }
                      },
                      child: const Text('Delete', style: TextStyle(color: Colors.red),),
                    ),
                  ],
                );
              });
            },
            icon: const Icon(Icons.delete_forever),
            tooltip: "Delete Issue",
            destructive: true,
            disabled: !(node is Query$GetIssueAndCommentsByID$node$$Issue && node.viewerCanDelete),
          ),
        ],
      ),
    );

  }

}