import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'GraphQL/GetRepositories.graphql.dart';
import 'issues.dart';

class AdvancedSearchResultPage extends HookWidget {
  const AdvancedSearchResultPage({super.key, required this.query});

  final List<String> query;

  @override
  Widget build(BuildContext context) {

    final repositories = useState<List<Query$GetRepositories$search$nodes?>>([]);

    final queryResult = useQuery$GetRepositories(
      Options$Query$GetRepositories(
        variables: Variables$Query$GetRepositories(
          query: query.join(" "),
          after: null,
        ),
      ),
    );
    final result = queryResult.result;

    void fetchMore() {
      queryResult.fetchMore(
        FetchMoreOptions$Query$GetRepositories(
          variables: Variables$Query$GetRepositories(
              query: query.join(" "),
              after: result.parsedData?.search.pageInfo.endCursor
          ),
          updateQuery: (previousResultData, fetchMoreResultData) {
            final previous = Query$GetRepositories.fromJson(previousResultData!);
            final fetchMore = Query$GetRepositories.fromJson(fetchMoreResultData!);

            // previous.search.nodes?.addAll(fetchMore.search.nodes ?? []);
            fetchMore.search.nodes?.insertAll(0, previous.search.nodes ?? []);

            return fetchMore.toJson();
          },
        ),
      );
    }

    Widget list;

    if (result.isLoading && result.parsedData == null) {
      list = const Center(child: CircularProgressIndicator());
      // list = const Center(child: Text('Loading...'));
    } else if (result.hasException) {
      list = Text(result.exception.toString());
    } else {
      repositories.value = result.parsedData?.search.nodes ?? [];
      final listChildren = repositories.value.expand((e) => <Widget>[
        const Divider(height: 0.5),
        if (e is Query$GetRepositories$search$nodes$$Repository)
          ListTile(
            title: Text(e.nameWithOwner),
            subtitle: Text(e.description ?? ""),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IssuesPage(e.id, e.nameWithOwner)),
              );
            },
          ),
      ]).toList();

      listChildren.add(const Divider(height: 0.5));
      if (result.parsedData!.search.pageInfo.hasNextPage) {
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
    title: Text("Result"),
    ),
    body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(child: body),
        ],
      ),
    ),
    );
  }
}