import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetRepositories {
  factory Variables$Query$GetRepositories({
    int? first,
    String? query,
    String? after,
  }) =>
      Variables$Query$GetRepositories._({
        if (first != null) r'first': first,
        if (query != null) r'query': query,
        if (after != null) r'after': after,
      });

  Variables$Query$GetRepositories._(this._$data);

  factory Variables$Query$GetRepositories.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$GetRepositories._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  String? get query => (_$data['query'] as String?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetRepositories<Variables$Query$GetRepositories>
      get copyWith => CopyWith$Variables$Query$GetRepositories(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetRepositories ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$query = query;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetRepositories<TRes> {
  factory CopyWith$Variables$Query$GetRepositories(
    Variables$Query$GetRepositories instance,
    TRes Function(Variables$Query$GetRepositories) then,
  ) = _CopyWithImpl$Variables$Query$GetRepositories;

  factory CopyWith$Variables$Query$GetRepositories.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetRepositories;

  TRes call({
    int? first,
    String? query,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$GetRepositories<TRes>
    implements CopyWith$Variables$Query$GetRepositories<TRes> {
  _CopyWithImpl$Variables$Query$GetRepositories(
    this._instance,
    this._then,
  );

  final Variables$Query$GetRepositories _instance;

  final TRes Function(Variables$Query$GetRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? query = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$GetRepositories._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (query != _undefined) 'query': (query as String?),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetRepositories<TRes>
    implements CopyWith$Variables$Query$GetRepositories<TRes> {
  _CopyWithStubImpl$Variables$Query$GetRepositories(this._res);

  TRes _res;

  call({
    int? first,
    String? query,
    String? after,
  }) =>
      _res;
}

class Query$GetRepositories {
  Query$GetRepositories({
    required this.search,
    this.$__typename = 'Query',
  });

  factory Query$GetRepositories.fromJson(Map<String, dynamic> json) {
    final l$search = json['search'];
    final l$$__typename = json['__typename'];
    return Query$GetRepositories(
      search: Query$GetRepositories$search.fromJson(
          (l$search as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRepositories$search search;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$search = search;
    _resultData['search'] = l$search.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$search,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories || runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories on Query$GetRepositories {
  CopyWith$Query$GetRepositories<Query$GetRepositories> get copyWith =>
      CopyWith$Query$GetRepositories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetRepositories<TRes> {
  factory CopyWith$Query$GetRepositories(
    Query$GetRepositories instance,
    TRes Function(Query$GetRepositories) then,
  ) = _CopyWithImpl$Query$GetRepositories;

  factory CopyWith$Query$GetRepositories.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRepositories;

  TRes call({
    Query$GetRepositories$search? search,
    String? $__typename,
  });
  CopyWith$Query$GetRepositories$search<TRes> get search;
}

class _CopyWithImpl$Query$GetRepositories<TRes>
    implements CopyWith$Query$GetRepositories<TRes> {
  _CopyWithImpl$Query$GetRepositories(
    this._instance,
    this._then,
  );

  final Query$GetRepositories _instance;

  final TRes Function(Query$GetRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRepositories(
        search: search == _undefined || search == null
            ? _instance.search
            : (search as Query$GetRepositories$search),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRepositories$search<TRes> get search {
    final local$search = _instance.search;
    return CopyWith$Query$GetRepositories$search(
        local$search, (e) => call(search: e));
  }
}

class _CopyWithStubImpl$Query$GetRepositories<TRes>
    implements CopyWith$Query$GetRepositories<TRes> {
  _CopyWithStubImpl$Query$GetRepositories(this._res);

  TRes _res;

  call({
    Query$GetRepositories$search? search,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRepositories$search<TRes> get search =>
      CopyWith$Query$GetRepositories$search.stub(_res);
}

const documentNodeQueryGetRepositories = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetRepositories'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: StringValueNode(
          value: '',
          isBlock: false,
        )),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'search'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'query'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: EnumValueNode(name: NameNode(value: 'REPOSITORY')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'Repository'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'nameWithOwner'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'stargazerCount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'owner'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'login'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetRepositories _parserFn$Query$GetRepositories(
        Map<String, dynamic> data) =>
    Query$GetRepositories.fromJson(data);
typedef OnQueryComplete$Query$GetRepositories = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetRepositories?,
);

class Options$Query$GetRepositories
    extends graphql.QueryOptions<Query$GetRepositories> {
  Options$Query$GetRepositories({
    String? operationName,
    Variables$Query$GetRepositories? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetRepositories? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetRepositories? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetRepositories(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetRepositories,
          parserFn: _parserFn$Query$GetRepositories,
        );

  final OnQueryComplete$Query$GetRepositories? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetRepositories
    extends graphql.WatchQueryOptions<Query$GetRepositories> {
  WatchOptions$Query$GetRepositories({
    String? operationName,
    Variables$Query$GetRepositories? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetRepositories? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetRepositories,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetRepositories,
        );
}

class FetchMoreOptions$Query$GetRepositories extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetRepositories({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetRepositories? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetRepositories,
        );
}

extension ClientExtension$Query$GetRepositories on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetRepositories>> query$GetRepositories(
          [Options$Query$GetRepositories? options]) async =>
      await this.query(options ?? Options$Query$GetRepositories());
  graphql.ObservableQuery<Query$GetRepositories> watchQuery$GetRepositories(
          [WatchOptions$Query$GetRepositories? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetRepositories());
  void writeQuery$GetRepositories({
    required Query$GetRepositories data,
    Variables$Query$GetRepositories? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetRepositories),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetRepositories? readQuery$GetRepositories({
    Variables$Query$GetRepositories? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetRepositories),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetRepositories.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetRepositories> useQuery$GetRepositories(
        [Options$Query$GetRepositories? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetRepositories());
graphql.ObservableQuery<Query$GetRepositories> useWatchQuery$GetRepositories(
        [WatchOptions$Query$GetRepositories? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetRepositories());

class Query$GetRepositories$Widget
    extends graphql_flutter.Query<Query$GetRepositories> {
  Query$GetRepositories$Widget({
    widgets.Key? key,
    Options$Query$GetRepositories? options,
    required graphql_flutter.QueryBuilder<Query$GetRepositories> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetRepositories(),
          builder: builder,
        );
}

class Query$GetRepositories$search {
  Query$GetRepositories$search({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchResultItemConnection',
  });

  factory Query$GetRepositories$search.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search(
      pageInfo: Query$GetRepositories$search$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetRepositories$search$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRepositories$search$pageInfo pageInfo;

  final List<Query$GetRepositories$search$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search
    on Query$GetRepositories$search {
  CopyWith$Query$GetRepositories$search<Query$GetRepositories$search>
      get copyWith => CopyWith$Query$GetRepositories$search(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search<TRes> {
  factory CopyWith$Query$GetRepositories$search(
    Query$GetRepositories$search instance,
    TRes Function(Query$GetRepositories$search) then,
  ) = _CopyWithImpl$Query$GetRepositories$search;

  factory CopyWith$Query$GetRepositories$search.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search;

  TRes call({
    Query$GetRepositories$search$pageInfo? pageInfo,
    List<Query$GetRepositories$search$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetRepositories$search$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$GetRepositories$search$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetRepositories$search$nodes<
                      Query$GetRepositories$search$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetRepositories$search<TRes>
    implements CopyWith$Query$GetRepositories$search<TRes> {
  _CopyWithImpl$Query$GetRepositories$search(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search _instance;

  final TRes Function(Query$GetRepositories$search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRepositories$search(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetRepositories$search$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetRepositories$search$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRepositories$search$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetRepositories$search$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetRepositories$search$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetRepositories$search$nodes<
                          Query$GetRepositories$search$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetRepositories$search$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetRepositories$search<TRes>
    implements CopyWith$Query$GetRepositories$search<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search(this._res);

  TRes _res;

  call({
    Query$GetRepositories$search$pageInfo? pageInfo,
    List<Query$GetRepositories$search$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRepositories$search$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetRepositories$search$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetRepositories$search$pageInfo {
  Query$GetRepositories$search$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetRepositories$search$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$pageInfo
    on Query$GetRepositories$search$pageInfo {
  CopyWith$Query$GetRepositories$search$pageInfo<
          Query$GetRepositories$search$pageInfo>
      get copyWith => CopyWith$Query$GetRepositories$search$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$pageInfo<TRes> {
  factory CopyWith$Query$GetRepositories$search$pageInfo(
    Query$GetRepositories$search$pageInfo instance,
    TRes Function(Query$GetRepositories$search$pageInfo) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$pageInfo;

  factory CopyWith$Query$GetRepositories$search$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetRepositories$search$pageInfo<TRes>
    implements CopyWith$Query$GetRepositories$search$pageInfo<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$pageInfo _instance;

  final TRes Function(Query$GetRepositories$search$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRepositories$search$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetRepositories$search$pageInfo<TRes>
    implements CopyWith$Query$GetRepositories$search$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetRepositories$search$nodes {
  Query$GetRepositories$search$nodes({required this.$__typename});

  factory Query$GetRepositories$search$nodes.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Repository":
        return Query$GetRepositories$search$nodes$$Repository.fromJson(json);

      case "App":
        return Query$GetRepositories$search$nodes$$App.fromJson(json);

      case "Discussion":
        return Query$GetRepositories$search$nodes$$Discussion.fromJson(json);

      case "Issue":
        return Query$GetRepositories$search$nodes$$Issue.fromJson(json);

      case "MarketplaceListing":
        return Query$GetRepositories$search$nodes$$MarketplaceListing.fromJson(
            json);

      case "Organization":
        return Query$GetRepositories$search$nodes$$Organization.fromJson(json);

      case "PullRequest":
        return Query$GetRepositories$search$nodes$$PullRequest.fromJson(json);

      case "User":
        return Query$GetRepositories$search$nodes$$User.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$GetRepositories$search$nodes(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes
    on Query$GetRepositories$search$nodes {
  CopyWith$Query$GetRepositories$search$nodes<
          Query$GetRepositories$search$nodes>
      get copyWith => CopyWith$Query$GetRepositories$search$nodes(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$GetRepositories$search$nodes$$Repository)
        repository,
    required _T Function(Query$GetRepositories$search$nodes$$App) app,
    required _T Function(Query$GetRepositories$search$nodes$$Discussion)
        discussion,
    required _T Function(Query$GetRepositories$search$nodes$$Issue) issue,
    required _T Function(Query$GetRepositories$search$nodes$$MarketplaceListing)
        marketplaceListing,
    required _T Function(Query$GetRepositories$search$nodes$$Organization)
        organization,
    required _T Function(Query$GetRepositories$search$nodes$$PullRequest)
        pullRequest,
    required _T Function(Query$GetRepositories$search$nodes$$User) user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Repository":
        return repository(
            this as Query$GetRepositories$search$nodes$$Repository);

      case "App":
        return app(this as Query$GetRepositories$search$nodes$$App);

      case "Discussion":
        return discussion(
            this as Query$GetRepositories$search$nodes$$Discussion);

      case "Issue":
        return issue(this as Query$GetRepositories$search$nodes$$Issue);

      case "MarketplaceListing":
        return marketplaceListing(
            this as Query$GetRepositories$search$nodes$$MarketplaceListing);

      case "Organization":
        return organization(
            this as Query$GetRepositories$search$nodes$$Organization);

      case "PullRequest":
        return pullRequest(
            this as Query$GetRepositories$search$nodes$$PullRequest);

      case "User":
        return user(this as Query$GetRepositories$search$nodes$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$GetRepositories$search$nodes$$Repository)? repository,
    _T Function(Query$GetRepositories$search$nodes$$App)? app,
    _T Function(Query$GetRepositories$search$nodes$$Discussion)? discussion,
    _T Function(Query$GetRepositories$search$nodes$$Issue)? issue,
    _T Function(Query$GetRepositories$search$nodes$$MarketplaceListing)?
        marketplaceListing,
    _T Function(Query$GetRepositories$search$nodes$$Organization)? organization,
    _T Function(Query$GetRepositories$search$nodes$$PullRequest)? pullRequest,
    _T Function(Query$GetRepositories$search$nodes$$User)? user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Repository":
        if (repository != null) {
          return repository(
              this as Query$GetRepositories$search$nodes$$Repository);
        } else {
          return orElse();
        }

      case "App":
        if (app != null) {
          return app(this as Query$GetRepositories$search$nodes$$App);
        } else {
          return orElse();
        }

      case "Discussion":
        if (discussion != null) {
          return discussion(
              this as Query$GetRepositories$search$nodes$$Discussion);
        } else {
          return orElse();
        }

      case "Issue":
        if (issue != null) {
          return issue(this as Query$GetRepositories$search$nodes$$Issue);
        } else {
          return orElse();
        }

      case "MarketplaceListing":
        if (marketplaceListing != null) {
          return marketplaceListing(
              this as Query$GetRepositories$search$nodes$$MarketplaceListing);
        } else {
          return orElse();
        }

      case "Organization":
        if (organization != null) {
          return organization(
              this as Query$GetRepositories$search$nodes$$Organization);
        } else {
          return orElse();
        }

      case "PullRequest":
        if (pullRequest != null) {
          return pullRequest(
              this as Query$GetRepositories$search$nodes$$PullRequest);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$GetRepositories$search$nodes$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetRepositories$search$nodes<TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes(
    Query$GetRepositories$search$nodes instance,
    TRes Function(Query$GetRepositories$search$nodes) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes;

  factory CopyWith$Query$GetRepositories$search$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetRepositories$search$nodes<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes _instance;

  final TRes Function(Query$GetRepositories$search$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetRepositories$search$nodes(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetRepositories$search$nodes$$Repository
    implements Query$GetRepositories$search$nodes {
  Query$GetRepositories$search$nodes$$Repository({
    required this.nameWithOwner,
    required this.id,
    required this.name,
    this.description,
    required this.url,
    required this.stargazerCount,
    required this.owner,
    this.$__typename = 'Repository',
  });

  factory Query$GetRepositories$search$nodes$$Repository.fromJson(
      Map<String, dynamic> json) {
    final l$nameWithOwner = json['nameWithOwner'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$url = json['url'];
    final l$stargazerCount = json['stargazerCount'];
    final l$owner = json['owner'];
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$nodes$$Repository(
      nameWithOwner: (l$nameWithOwner as String),
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      url: (l$url as String),
      stargazerCount: (l$stargazerCount as int),
      owner: Query$GetRepositories$search$nodes$$Repository$owner.fromJson(
          (l$owner as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String nameWithOwner;

  final String id;

  final String name;

  final String? description;

  final String url;

  final int stargazerCount;

  final Query$GetRepositories$search$nodes$$Repository$owner owner;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nameWithOwner = nameWithOwner;
    _resultData['nameWithOwner'] = l$nameWithOwner;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$stargazerCount = stargazerCount;
    _resultData['stargazerCount'] = l$stargazerCount;
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nameWithOwner = nameWithOwner;
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$url = url;
    final l$stargazerCount = stargazerCount;
    final l$owner = owner;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nameWithOwner,
      l$id,
      l$name,
      l$description,
      l$url,
      l$stargazerCount,
      l$owner,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes$$Repository ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nameWithOwner = nameWithOwner;
    final lOther$nameWithOwner = other.nameWithOwner;
    if (l$nameWithOwner != lOther$nameWithOwner) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$stargazerCount = stargazerCount;
    final lOther$stargazerCount = other.stargazerCount;
    if (l$stargazerCount != lOther$stargazerCount) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$Repository
    on Query$GetRepositories$search$nodes$$Repository {
  CopyWith$Query$GetRepositories$search$nodes$$Repository<
          Query$GetRepositories$search$nodes$$Repository>
      get copyWith => CopyWith$Query$GetRepositories$search$nodes$$Repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$Repository<TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$Repository(
    Query$GetRepositories$search$nodes$$Repository instance,
    TRes Function(Query$GetRepositories$search$nodes$$Repository) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository;

  factory CopyWith$Query$GetRepositories$search$nodes$$Repository.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository;

  TRes call({
    String? nameWithOwner,
    String? id,
    String? name,
    String? description,
    String? url,
    int? stargazerCount,
    Query$GetRepositories$search$nodes$$Repository$owner? owner,
    String? $__typename,
  });
  CopyWith$Query$GetRepositories$search$nodes$$Repository$owner<TRes> get owner;
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$Repository<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$Repository _instance;

  final TRes Function(Query$GetRepositories$search$nodes$$Repository) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nameWithOwner = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? url = _undefined,
    Object? stargazerCount = _undefined,
    Object? owner = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRepositories$search$nodes$$Repository(
        nameWithOwner: nameWithOwner == _undefined || nameWithOwner == null
            ? _instance.nameWithOwner
            : (nameWithOwner as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        url: url == _undefined || url == null ? _instance.url : (url as String),
        stargazerCount: stargazerCount == _undefined || stargazerCount == null
            ? _instance.stargazerCount
            : (stargazerCount as int),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Query$GetRepositories$search$nodes$$Repository$owner),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRepositories$search$nodes$$Repository$owner<TRes>
      get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$GetRepositories$search$nodes$$Repository$owner(
        local$owner, (e) => call(owner: e));
  }
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$Repository<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository(this._res);

  TRes _res;

  call({
    String? nameWithOwner,
    String? id,
    String? name,
    String? description,
    String? url,
    int? stargazerCount,
    Query$GetRepositories$search$nodes$$Repository$owner? owner,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRepositories$search$nodes$$Repository$owner<TRes>
      get owner =>
          CopyWith$Query$GetRepositories$search$nodes$$Repository$owner.stub(
              _res);
}

class Query$GetRepositories$search$nodes$$Repository$owner {
  Query$GetRepositories$search$nodes$$Repository$owner({
    required this.login,
    required this.$__typename,
  });

  factory Query$GetRepositories$search$nodes$$Repository$owner.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Organization":
        return Query$GetRepositories$search$nodes$$Repository$owner$$Organization
            .fromJson(json);

      case "User":
        return Query$GetRepositories$search$nodes$$Repository$owner$$User
            .fromJson(json);

      default:
        final l$login = json['login'];
        final l$$__typename = json['__typename'];
        return Query$GetRepositories$search$nodes$$Repository$owner(
          login: (l$login as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes$$Repository$owner ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$Repository$owner
    on Query$GetRepositories$search$nodes$$Repository$owner {
  CopyWith$Query$GetRepositories$search$nodes$$Repository$owner<
          Query$GetRepositories$search$nodes$$Repository$owner>
      get copyWith =>
          CopyWith$Query$GetRepositories$search$nodes$$Repository$owner(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$GetRepositories$search$nodes$$Repository$owner$$Organization)
        organization,
    required _T Function(
            Query$GetRepositories$search$nodes$$Repository$owner$$User)
        user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Organization":
        return organization(this
            as Query$GetRepositories$search$nodes$$Repository$owner$$Organization);

      case "User":
        return user(
            this as Query$GetRepositories$search$nodes$$Repository$owner$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$GetRepositories$search$nodes$$Repository$owner$$Organization)?
        organization,
    _T Function(Query$GetRepositories$search$nodes$$Repository$owner$$User)?
        user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Organization":
        if (organization != null) {
          return organization(this
              as Query$GetRepositories$search$nodes$$Repository$owner$$Organization);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this
              as Query$GetRepositories$search$nodes$$Repository$owner$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$Repository$owner<
    TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$Repository$owner(
    Query$GetRepositories$search$nodes$$Repository$owner instance,
    TRes Function(Query$GetRepositories$search$nodes$$Repository$owner) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository$owner;

  factory CopyWith$Query$GetRepositories$search$nodes$$Repository$owner.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository$owner;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository$owner<TRes>
    implements
        CopyWith$Query$GetRepositories$search$nodes$$Repository$owner<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository$owner(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$Repository$owner _instance;

  final TRes Function(Query$GetRepositories$search$nodes$$Repository$owner)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRepositories$search$nodes$$Repository$owner(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository$owner<
        TRes>
    implements
        CopyWith$Query$GetRepositories$search$nodes$$Repository$owner<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository$owner(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetRepositories$search$nodes$$Repository$owner$$Organization
    implements Query$GetRepositories$search$nodes$$Repository$owner {
  Query$GetRepositories$search$nodes$$Repository$owner$$Organization({
    required this.login,
    this.$__typename = 'Organization',
  });

  factory Query$GetRepositories$search$nodes$$Repository$owner$$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$nodes$$Repository$owner$$Organization(
      login: (l$login as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetRepositories$search$nodes$$Repository$owner$$Organization ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$Repository$owner$$Organization
    on Query$GetRepositories$search$nodes$$Repository$owner$$Organization {
  CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$Organization<
          Query$GetRepositories$search$nodes$$Repository$owner$$Organization>
      get copyWith =>
          CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$Organization<
    TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$Organization(
    Query$GetRepositories$search$nodes$$Repository$owner$$Organization instance,
    TRes Function(
            Query$GetRepositories$search$nodes$$Repository$owner$$Organization)
        then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository$owner$$Organization;

  factory CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$Organization.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository$owner$$Organization;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository$owner$$Organization<
        TRes>
    implements
        CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$Organization<
            TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository$owner$$Organization(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$Repository$owner$$Organization
      _instance;

  final TRes Function(
      Query$GetRepositories$search$nodes$$Repository$owner$$Organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRepositories$search$nodes$$Repository$owner$$Organization(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository$owner$$Organization<
        TRes>
    implements
        CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$Organization<
            TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository$owner$$Organization(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetRepositories$search$nodes$$Repository$owner$$User
    implements Query$GetRepositories$search$nodes$$Repository$owner {
  Query$GetRepositories$search$nodes$$Repository$owner$$User({
    required this.login,
    this.$__typename = 'User',
  });

  factory Query$GetRepositories$search$nodes$$Repository$owner$$User.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$nodes$$Repository$owner$$User(
      login: (l$login as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes$$Repository$owner$$User ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$Repository$owner$$User
    on Query$GetRepositories$search$nodes$$Repository$owner$$User {
  CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$User<
          Query$GetRepositories$search$nodes$$Repository$owner$$User>
      get copyWith =>
          CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$User<
    TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$User(
    Query$GetRepositories$search$nodes$$Repository$owner$$User instance,
    TRes Function(Query$GetRepositories$search$nodes$$Repository$owner$$User)
        then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository$owner$$User;

  factory CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$User.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository$owner$$User;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository$owner$$User<
        TRes>
    implements
        CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$User<
            TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$Repository$owner$$User(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$Repository$owner$$User _instance;

  final TRes Function(
      Query$GetRepositories$search$nodes$$Repository$owner$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRepositories$search$nodes$$Repository$owner$$User(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository$owner$$User<
        TRes>
    implements
        CopyWith$Query$GetRepositories$search$nodes$$Repository$owner$$User<
            TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Repository$owner$$User(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetRepositories$search$nodes$$App
    implements Query$GetRepositories$search$nodes {
  Query$GetRepositories$search$nodes$$App({this.$__typename = 'App'});

  factory Query$GetRepositories$search$nodes$$App.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$nodes$$App(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes$$App ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$App
    on Query$GetRepositories$search$nodes$$App {
  CopyWith$Query$GetRepositories$search$nodes$$App<
          Query$GetRepositories$search$nodes$$App>
      get copyWith => CopyWith$Query$GetRepositories$search$nodes$$App(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$App<TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$App(
    Query$GetRepositories$search$nodes$$App instance,
    TRes Function(Query$GetRepositories$search$nodes$$App) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$App;

  factory CopyWith$Query$GetRepositories$search$nodes$$App.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$App;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$App<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$App<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$App(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$App _instance;

  final TRes Function(Query$GetRepositories$search$nodes$$App) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetRepositories$search$nodes$$App(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$App<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$App<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$App(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetRepositories$search$nodes$$Discussion
    implements Query$GetRepositories$search$nodes {
  Query$GetRepositories$search$nodes$$Discussion(
      {this.$__typename = 'Discussion'});

  factory Query$GetRepositories$search$nodes$$Discussion.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$nodes$$Discussion(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes$$Discussion ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$Discussion
    on Query$GetRepositories$search$nodes$$Discussion {
  CopyWith$Query$GetRepositories$search$nodes$$Discussion<
          Query$GetRepositories$search$nodes$$Discussion>
      get copyWith => CopyWith$Query$GetRepositories$search$nodes$$Discussion(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$Discussion<TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$Discussion(
    Query$GetRepositories$search$nodes$$Discussion instance,
    TRes Function(Query$GetRepositories$search$nodes$$Discussion) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$Discussion;

  factory CopyWith$Query$GetRepositories$search$nodes$$Discussion.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Discussion;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$Discussion<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$Discussion<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$Discussion(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$Discussion _instance;

  final TRes Function(Query$GetRepositories$search$nodes$$Discussion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetRepositories$search$nodes$$Discussion(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Discussion<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$Discussion<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Discussion(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetRepositories$search$nodes$$Issue
    implements Query$GetRepositories$search$nodes {
  Query$GetRepositories$search$nodes$$Issue({this.$__typename = 'Issue'});

  factory Query$GetRepositories$search$nodes$$Issue.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$nodes$$Issue(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes$$Issue ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$Issue
    on Query$GetRepositories$search$nodes$$Issue {
  CopyWith$Query$GetRepositories$search$nodes$$Issue<
          Query$GetRepositories$search$nodes$$Issue>
      get copyWith => CopyWith$Query$GetRepositories$search$nodes$$Issue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$Issue<TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$Issue(
    Query$GetRepositories$search$nodes$$Issue instance,
    TRes Function(Query$GetRepositories$search$nodes$$Issue) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$Issue;

  factory CopyWith$Query$GetRepositories$search$nodes$$Issue.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Issue;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$Issue<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$Issue<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$Issue(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$Issue _instance;

  final TRes Function(Query$GetRepositories$search$nodes$$Issue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetRepositories$search$nodes$$Issue(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Issue<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$Issue<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Issue(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetRepositories$search$nodes$$MarketplaceListing
    implements Query$GetRepositories$search$nodes {
  Query$GetRepositories$search$nodes$$MarketplaceListing(
      {this.$__typename = 'MarketplaceListing'});

  factory Query$GetRepositories$search$nodes$$MarketplaceListing.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$nodes$$MarketplaceListing(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes$$MarketplaceListing ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$MarketplaceListing
    on Query$GetRepositories$search$nodes$$MarketplaceListing {
  CopyWith$Query$GetRepositories$search$nodes$$MarketplaceListing<
          Query$GetRepositories$search$nodes$$MarketplaceListing>
      get copyWith =>
          CopyWith$Query$GetRepositories$search$nodes$$MarketplaceListing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$MarketplaceListing<
    TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$MarketplaceListing(
    Query$GetRepositories$search$nodes$$MarketplaceListing instance,
    TRes Function(Query$GetRepositories$search$nodes$$MarketplaceListing) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$MarketplaceListing;

  factory CopyWith$Query$GetRepositories$search$nodes$$MarketplaceListing.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$MarketplaceListing;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$MarketplaceListing<TRes>
    implements
        CopyWith$Query$GetRepositories$search$nodes$$MarketplaceListing<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$MarketplaceListing(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$MarketplaceListing _instance;

  final TRes Function(Query$GetRepositories$search$nodes$$MarketplaceListing)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetRepositories$search$nodes$$MarketplaceListing(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$MarketplaceListing<
        TRes>
    implements
        CopyWith$Query$GetRepositories$search$nodes$$MarketplaceListing<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$MarketplaceListing(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetRepositories$search$nodes$$Organization
    implements Query$GetRepositories$search$nodes {
  Query$GetRepositories$search$nodes$$Organization(
      {this.$__typename = 'Organization'});

  factory Query$GetRepositories$search$nodes$$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$nodes$$Organization(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes$$Organization ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$Organization
    on Query$GetRepositories$search$nodes$$Organization {
  CopyWith$Query$GetRepositories$search$nodes$$Organization<
          Query$GetRepositories$search$nodes$$Organization>
      get copyWith => CopyWith$Query$GetRepositories$search$nodes$$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$Organization<TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$Organization(
    Query$GetRepositories$search$nodes$$Organization instance,
    TRes Function(Query$GetRepositories$search$nodes$$Organization) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$Organization;

  factory CopyWith$Query$GetRepositories$search$nodes$$Organization.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Organization;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$Organization<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$Organization<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$Organization(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$Organization _instance;

  final TRes Function(Query$GetRepositories$search$nodes$$Organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetRepositories$search$nodes$$Organization(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Organization<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$Organization<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$Organization(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetRepositories$search$nodes$$PullRequest
    implements Query$GetRepositories$search$nodes {
  Query$GetRepositories$search$nodes$$PullRequest(
      {this.$__typename = 'PullRequest'});

  factory Query$GetRepositories$search$nodes$$PullRequest.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$nodes$$PullRequest(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes$$PullRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$PullRequest
    on Query$GetRepositories$search$nodes$$PullRequest {
  CopyWith$Query$GetRepositories$search$nodes$$PullRequest<
          Query$GetRepositories$search$nodes$$PullRequest>
      get copyWith => CopyWith$Query$GetRepositories$search$nodes$$PullRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$PullRequest<TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$PullRequest(
    Query$GetRepositories$search$nodes$$PullRequest instance,
    TRes Function(Query$GetRepositories$search$nodes$$PullRequest) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$PullRequest;

  factory CopyWith$Query$GetRepositories$search$nodes$$PullRequest.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$PullRequest;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$PullRequest<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$PullRequest<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$PullRequest(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$PullRequest _instance;

  final TRes Function(Query$GetRepositories$search$nodes$$PullRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetRepositories$search$nodes$$PullRequest(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$PullRequest<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$PullRequest<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$PullRequest(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetRepositories$search$nodes$$User
    implements Query$GetRepositories$search$nodes {
  Query$GetRepositories$search$nodes$$User({this.$__typename = 'User'});

  factory Query$GetRepositories$search$nodes$$User.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$GetRepositories$search$nodes$$User(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRepositories$search$nodes$$User ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRepositories$search$nodes$$User
    on Query$GetRepositories$search$nodes$$User {
  CopyWith$Query$GetRepositories$search$nodes$$User<
          Query$GetRepositories$search$nodes$$User>
      get copyWith => CopyWith$Query$GetRepositories$search$nodes$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRepositories$search$nodes$$User<TRes> {
  factory CopyWith$Query$GetRepositories$search$nodes$$User(
    Query$GetRepositories$search$nodes$$User instance,
    TRes Function(Query$GetRepositories$search$nodes$$User) then,
  ) = _CopyWithImpl$Query$GetRepositories$search$nodes$$User;

  factory CopyWith$Query$GetRepositories$search$nodes$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRepositories$search$nodes$$User;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetRepositories$search$nodes$$User<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$User<TRes> {
  _CopyWithImpl$Query$GetRepositories$search$nodes$$User(
    this._instance,
    this._then,
  );

  final Query$GetRepositories$search$nodes$$User _instance;

  final TRes Function(Query$GetRepositories$search$nodes$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetRepositories$search$nodes$$User(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetRepositories$search$nodes$$User<TRes>
    implements CopyWith$Query$GetRepositories$search$nodes$$User<TRes> {
  _CopyWithStubImpl$Query$GetRepositories$search$nodes$$User(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
