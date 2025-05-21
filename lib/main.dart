import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_graphql/advanced_search.dart';
import 'package:github_graphql/issues.dart';
import 'package:github_graphql/setting.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './GraphQL/GetRepositories.graphql.dart';

import 'package:graphql_flutter/graphql_flutter.dart';

Future<GraphQLClient> initGraphQLClient() async {
  // トークンなどを取得する関数
  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("accessToken");
  }

  // 動的にヘッダーを設定するリンク
  final authLink = AuthLink(
    getToken: () async => 'Bearer ${await getToken()}',
  );

  final httpLink = HttpLink('https://api.github.com/graphql');

  final link = authLink.concat(httpLink);

  return GraphQLClient(
    cache: GraphQLCache(),
    link: link,
  );
}

Future<void> main() async {

  runApp(
      GraphQLProvider(
      client: ValueNotifier(await initGraphQLClient()),
      child: const CacheProvider(child: MyApp())
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Repositories')
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

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
        title: Text(widget.title),
        leading: IconButton(
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Setting(prefs.getString("accessToken")),
                  fullscreenDialog: true,
                ),
              );
            },
            icon: Icon(Icons.settings)
        ),
      ),
      body: RepositoryListWidget(),
    );
  }
}

class RepositoryListWidget extends HookWidget {
  const RepositoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final searchQuery = useState<String>('');
    void changeQuery(String query) {
      searchQuery.value = query;
    }

    final repositories = useState<List<Query$GetRepositories$search$nodes?>>([]);

    final queryResult = useQuery$GetRepositories(
      Options$Query$GetRepositories(
        variables: Variables$Query$GetRepositories(
          query: "in:name ${searchQuery.value}",
          after: null,
        ),
      ),
    );
    final result = queryResult.result;

    void fetchMore() {
      queryResult.fetchMore(
        FetchMoreOptions$Query$GetRepositories(
          variables: Variables$Query$GetRepositories(
            query: "in:name ${searchQuery.value}",
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

    if (searchQuery.value.isEmpty) {
      list = const Center(child: Text("Type some search query"));
    } else if (result.isLoading && result.parsedData == null) {
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

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TextField(
            decoration: const InputDecoration(labelText: 'Search Query'),
            keyboardType: TextInputType.text,
            onSubmitted: changeQuery,
          ),
          Expanded(child: body),
        ],
      ),
    );
  }
}
