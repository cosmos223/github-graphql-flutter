import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_graphql/GraphQL/GetIssues.graphql.dart';
import 'package:github_graphql/create_issue.dart';
import 'package:github_graphql/issue_detail.dart';

class IssuesPage extends HookWidget {
  const IssuesPage(this.id, this.name, {super.key});
  final String id;
  final String name;

  @override
  Widget build(BuildContext context) {
    final issues = useState<List<Query$GetIssuesByRepositoryID$node$$Repository$issues$nodes?>>([]);

    final queryResult = useQuery$GetIssuesByRepositoryID(
      Options$Query$GetIssuesByRepositoryID(
        variables: Variables$Query$GetIssuesByRepositoryID(
          id: id,
          after: null,
        ),
      ),
    );
    final result = queryResult.result;

    final node = result.parsedData?.node;

    void fetchMore() {
      if (node is Query$GetIssuesByRepositoryID$node$$Repository) {
        queryResult.fetchMore(
          FetchMoreOptions$Query$GetIssuesByRepositoryID(
            variables: Variables$Query$GetIssuesByRepositoryID(
                id: id,
                after: node.issues.pageInfo.endCursor
            ),
            updateQuery: (previousResultData, fetchMoreResultData) {
              final previous = Query$GetIssuesByRepositoryID.fromJson(previousResultData!);
              final fetchMore = Query$GetIssuesByRepositoryID.fromJson(fetchMoreResultData!);

              final prevNode = previous.node;
              final moreNode = fetchMore.node;

              if (prevNode is Query$GetIssuesByRepositoryID$node$$Repository && moreNode is Query$GetIssuesByRepositoryID$node$$Repository) {
                moreNode.issues.nodes?.insertAll(0, prevNode.issues.nodes ?? []);
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
      if (node is Query$GetIssuesByRepositoryID$node$$Repository) {
        issues.value = node.issues.nodes ?? [];
      }
      final listChildren = issues.value.expand((e) => <Widget>[
        const Divider(height: 0.5),
          ListTile(
            title: Text(e?.title ?? ""),
            subtitle: Text(e?.author?.login ?? ""),
            onTap: () async {
              final issueId = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IssueDetailPage(e!.id, e.title)),
              );
              if (issueId is String && issueId.isNotEmpty) {
                queryResult.refetch();
              }
            },
          ),
      ]).toList();

      listChildren.add(const Divider(height: 0.5));
      if (node is Query$GetIssuesByRepositoryID$node$$Repository && node.issues.pageInfo.hasNextPage) {
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
        title: Text("$name Issues"),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: body
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CreateIssuePage(id),
                fullscreenDialog: true,
            ),
          );
          // popで戻ってきた時の処理
          queryResult.refetch();
        },
        tooltip: "Create New Issue",
        child: Icon(Icons.edit),
      ),
    );

  }

}