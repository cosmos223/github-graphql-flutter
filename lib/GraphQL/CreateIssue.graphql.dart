import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphqls.dart';

class Variables$Mutation$CreateIssue {
  factory Variables$Mutation$CreateIssue({
    required String repositoryId,
    required String title,
    String? body,
  }) =>
      Variables$Mutation$CreateIssue._({
        r'repositoryId': repositoryId,
        r'title': title,
        if (body != null) r'body': body,
      });

  Variables$Mutation$CreateIssue._(this._$data);

  factory Variables$Mutation$CreateIssue.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$repositoryId = data['repositoryId'];
    result$data['repositoryId'] = (l$repositoryId as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('body')) {
      final l$body = data['body'];
      result$data['body'] = (l$body as String?);
    }
    return Variables$Mutation$CreateIssue._(result$data);
  }

  Map<String, dynamic> _$data;

  String get repositoryId => (_$data['repositoryId'] as String);

  String get title => (_$data['title'] as String);

  String? get body => (_$data['body'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$repositoryId = repositoryId;
    result$data['repositoryId'] = l$repositoryId;
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('body')) {
      final l$body = body;
      result$data['body'] = l$body;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateIssue<Variables$Mutation$CreateIssue>
      get copyWith => CopyWith$Variables$Mutation$CreateIssue(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateIssue ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$repositoryId = repositoryId;
    final lOther$repositoryId = other.repositoryId;
    if (l$repositoryId != lOther$repositoryId) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (_$data.containsKey('body') != other._$data.containsKey('body')) {
      return false;
    }
    if (l$body != lOther$body) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$repositoryId = repositoryId;
    final l$title = title;
    final l$body = body;
    return Object.hashAll([
      l$repositoryId,
      l$title,
      _$data.containsKey('body') ? l$body : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateIssue<TRes> {
  factory CopyWith$Variables$Mutation$CreateIssue(
    Variables$Mutation$CreateIssue instance,
    TRes Function(Variables$Mutation$CreateIssue) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateIssue;

  factory CopyWith$Variables$Mutation$CreateIssue.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateIssue;

  TRes call({
    String? repositoryId,
    String? title,
    String? body,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateIssue<TRes>
    implements CopyWith$Variables$Mutation$CreateIssue<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateIssue(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateIssue _instance;

  final TRes Function(Variables$Mutation$CreateIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? repositoryId = _undefined,
    Object? title = _undefined,
    Object? body = _undefined,
  }) =>
      _then(Variables$Mutation$CreateIssue._({
        ..._instance._$data,
        if (repositoryId != _undefined && repositoryId != null)
          'repositoryId': (repositoryId as String),
        if (title != _undefined && title != null) 'title': (title as String),
        if (body != _undefined) 'body': (body as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateIssue<TRes>
    implements CopyWith$Variables$Mutation$CreateIssue<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateIssue(this._res);

  TRes _res;

  call({
    String? repositoryId,
    String? title,
    String? body,
  }) =>
      _res;
}

class Mutation$CreateIssue {
  Mutation$CreateIssue({
    this.createIssue,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateIssue.fromJson(Map<String, dynamic> json) {
    final l$createIssue = json['createIssue'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateIssue(
      createIssue: l$createIssue == null
          ? null
          : Mutation$CreateIssue$createIssue.fromJson(
              (l$createIssue as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateIssue$createIssue? createIssue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createIssue = createIssue;
    _resultData['createIssue'] = l$createIssue?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createIssue = createIssue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createIssue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateIssue || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createIssue = createIssue;
    final lOther$createIssue = other.createIssue;
    if (l$createIssue != lOther$createIssue) {
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

extension UtilityExtension$Mutation$CreateIssue on Mutation$CreateIssue {
  CopyWith$Mutation$CreateIssue<Mutation$CreateIssue> get copyWith =>
      CopyWith$Mutation$CreateIssue(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateIssue<TRes> {
  factory CopyWith$Mutation$CreateIssue(
    Mutation$CreateIssue instance,
    TRes Function(Mutation$CreateIssue) then,
  ) = _CopyWithImpl$Mutation$CreateIssue;

  factory CopyWith$Mutation$CreateIssue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateIssue;

  TRes call({
    Mutation$CreateIssue$createIssue? createIssue,
    String? $__typename,
  });
  CopyWith$Mutation$CreateIssue$createIssue<TRes> get createIssue;
}

class _CopyWithImpl$Mutation$CreateIssue<TRes>
    implements CopyWith$Mutation$CreateIssue<TRes> {
  _CopyWithImpl$Mutation$CreateIssue(
    this._instance,
    this._then,
  );

  final Mutation$CreateIssue _instance;

  final TRes Function(Mutation$CreateIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createIssue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateIssue(
        createIssue: createIssue == _undefined
            ? _instance.createIssue
            : (createIssue as Mutation$CreateIssue$createIssue?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateIssue$createIssue<TRes> get createIssue {
    final local$createIssue = _instance.createIssue;
    return local$createIssue == null
        ? CopyWith$Mutation$CreateIssue$createIssue.stub(_then(_instance))
        : CopyWith$Mutation$CreateIssue$createIssue(
            local$createIssue, (e) => call(createIssue: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateIssue<TRes>
    implements CopyWith$Mutation$CreateIssue<TRes> {
  _CopyWithStubImpl$Mutation$CreateIssue(this._res);

  TRes _res;

  call({
    Mutation$CreateIssue$createIssue? createIssue,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateIssue$createIssue<TRes> get createIssue =>
      CopyWith$Mutation$CreateIssue$createIssue.stub(_res);
}

const documentNodeMutationCreateIssue = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateIssue'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'repositoryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'title')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'body')),
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
        name: NameNode(value: 'createIssue'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'repositoryId'),
                value: VariableNode(name: NameNode(value: 'repositoryId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'title'),
                value: VariableNode(name: NameNode(value: 'title')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'body'),
                value: VariableNode(name: NameNode(value: 'body')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'issue'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'number'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'state'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'author'),
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
]);
Mutation$CreateIssue _parserFn$Mutation$CreateIssue(
        Map<String, dynamic> data) =>
    Mutation$CreateIssue.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateIssue = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateIssue?,
);

class Options$Mutation$CreateIssue
    extends graphql.MutationOptions<Mutation$CreateIssue> {
  Options$Mutation$CreateIssue({
    String? operationName,
    required Variables$Mutation$CreateIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateIssue? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateIssue? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateIssue>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateIssue(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateIssue,
          parserFn: _parserFn$Mutation$CreateIssue,
        );

  final OnMutationCompleted$Mutation$CreateIssue? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateIssue
    extends graphql.WatchQueryOptions<Mutation$CreateIssue> {
  WatchOptions$Mutation$CreateIssue({
    String? operationName,
    required Variables$Mutation$CreateIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateIssue? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationCreateIssue,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateIssue,
        );
}

extension ClientExtension$Mutation$CreateIssue on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateIssue>> mutate$CreateIssue(
          Options$Mutation$CreateIssue options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateIssue> watchMutation$CreateIssue(
          WatchOptions$Mutation$CreateIssue options) =>
      this.watchMutation(options);
}

class Mutation$CreateIssue$HookResult {
  Mutation$CreateIssue$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateIssue runMutation;

  final graphql.QueryResult<Mutation$CreateIssue> result;
}

Mutation$CreateIssue$HookResult useMutation$CreateIssue(
    [WidgetOptions$Mutation$CreateIssue? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateIssue());
  return Mutation$CreateIssue$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateIssue> useWatchMutation$CreateIssue(
        WatchOptions$Mutation$CreateIssue options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateIssue
    extends graphql.MutationOptions<Mutation$CreateIssue> {
  WidgetOptions$Mutation$CreateIssue({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateIssue? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateIssue? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateIssue>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateIssue(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateIssue,
          parserFn: _parserFn$Mutation$CreateIssue,
        );

  final OnMutationCompleted$Mutation$CreateIssue? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateIssue
    = graphql.MultiSourceResult<Mutation$CreateIssue> Function(
  Variables$Mutation$CreateIssue, {
  Object? optimisticResult,
  Mutation$CreateIssue? typedOptimisticResult,
});
typedef Builder$Mutation$CreateIssue = widgets.Widget Function(
  RunMutation$Mutation$CreateIssue,
  graphql.QueryResult<Mutation$CreateIssue>?,
);

class Mutation$CreateIssue$Widget
    extends graphql_flutter.Mutation<Mutation$CreateIssue> {
  Mutation$CreateIssue$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateIssue? options,
    required Builder$Mutation$CreateIssue builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateIssue(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$CreateIssue$createIssue {
  Mutation$CreateIssue$createIssue({
    this.issue,
    this.$__typename = 'CreateIssuePayload',
  });

  factory Mutation$CreateIssue$createIssue.fromJson(Map<String, dynamic> json) {
    final l$issue = json['issue'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateIssue$createIssue(
      issue: l$issue == null
          ? null
          : Mutation$CreateIssue$createIssue$issue.fromJson(
              (l$issue as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateIssue$createIssue$issue? issue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$issue = issue;
    _resultData['issue'] = l$issue?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$issue = issue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$issue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateIssue$createIssue ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$issue = issue;
    final lOther$issue = other.issue;
    if (l$issue != lOther$issue) {
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

extension UtilityExtension$Mutation$CreateIssue$createIssue
    on Mutation$CreateIssue$createIssue {
  CopyWith$Mutation$CreateIssue$createIssue<Mutation$CreateIssue$createIssue>
      get copyWith => CopyWith$Mutation$CreateIssue$createIssue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateIssue$createIssue<TRes> {
  factory CopyWith$Mutation$CreateIssue$createIssue(
    Mutation$CreateIssue$createIssue instance,
    TRes Function(Mutation$CreateIssue$createIssue) then,
  ) = _CopyWithImpl$Mutation$CreateIssue$createIssue;

  factory CopyWith$Mutation$CreateIssue$createIssue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateIssue$createIssue;

  TRes call({
    Mutation$CreateIssue$createIssue$issue? issue,
    String? $__typename,
  });
  CopyWith$Mutation$CreateIssue$createIssue$issue<TRes> get issue;
}

class _CopyWithImpl$Mutation$CreateIssue$createIssue<TRes>
    implements CopyWith$Mutation$CreateIssue$createIssue<TRes> {
  _CopyWithImpl$Mutation$CreateIssue$createIssue(
    this._instance,
    this._then,
  );

  final Mutation$CreateIssue$createIssue _instance;

  final TRes Function(Mutation$CreateIssue$createIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? issue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateIssue$createIssue(
        issue: issue == _undefined
            ? _instance.issue
            : (issue as Mutation$CreateIssue$createIssue$issue?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateIssue$createIssue$issue<TRes> get issue {
    final local$issue = _instance.issue;
    return local$issue == null
        ? CopyWith$Mutation$CreateIssue$createIssue$issue.stub(_then(_instance))
        : CopyWith$Mutation$CreateIssue$createIssue$issue(
            local$issue, (e) => call(issue: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateIssue$createIssue<TRes>
    implements CopyWith$Mutation$CreateIssue$createIssue<TRes> {
  _CopyWithStubImpl$Mutation$CreateIssue$createIssue(this._res);

  TRes _res;

  call({
    Mutation$CreateIssue$createIssue$issue? issue,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateIssue$createIssue$issue<TRes> get issue =>
      CopyWith$Mutation$CreateIssue$createIssue$issue.stub(_res);
}

class Mutation$CreateIssue$createIssue$issue {
  Mutation$CreateIssue$createIssue$issue({
    required this.id,
    required this.title,
    required this.number,
    required this.state,
    this.author,
    this.$__typename = 'Issue',
  });

  factory Mutation$CreateIssue$createIssue$issue.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$number = json['number'];
    final l$state = json['state'];
    final l$author = json['author'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateIssue$createIssue$issue(
      id: (l$id as String),
      title: (l$title as String),
      number: (l$number as int),
      state: fromJson$Enum$IssueState((l$state as String)),
      author: l$author == null
          ? null
          : Mutation$CreateIssue$createIssue$issue$author.fromJson(
              (l$author as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final int number;

  final Enum$IssueState state;

  final Mutation$CreateIssue$createIssue$issue$author? author;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$state = state;
    _resultData['state'] = toJson$Enum$IssueState(l$state);
    final l$author = author;
    _resultData['author'] = l$author?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$number = number;
    final l$state = state;
    final l$author = author;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$number,
      l$state,
      l$author,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateIssue$createIssue$issue ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
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

extension UtilityExtension$Mutation$CreateIssue$createIssue$issue
    on Mutation$CreateIssue$createIssue$issue {
  CopyWith$Mutation$CreateIssue$createIssue$issue<
          Mutation$CreateIssue$createIssue$issue>
      get copyWith => CopyWith$Mutation$CreateIssue$createIssue$issue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateIssue$createIssue$issue<TRes> {
  factory CopyWith$Mutation$CreateIssue$createIssue$issue(
    Mutation$CreateIssue$createIssue$issue instance,
    TRes Function(Mutation$CreateIssue$createIssue$issue) then,
  ) = _CopyWithImpl$Mutation$CreateIssue$createIssue$issue;

  factory CopyWith$Mutation$CreateIssue$createIssue$issue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue;

  TRes call({
    String? id,
    String? title,
    int? number,
    Enum$IssueState? state,
    Mutation$CreateIssue$createIssue$issue$author? author,
    String? $__typename,
  });
  CopyWith$Mutation$CreateIssue$createIssue$issue$author<TRes> get author;
}

class _CopyWithImpl$Mutation$CreateIssue$createIssue$issue<TRes>
    implements CopyWith$Mutation$CreateIssue$createIssue$issue<TRes> {
  _CopyWithImpl$Mutation$CreateIssue$createIssue$issue(
    this._instance,
    this._then,
  );

  final Mutation$CreateIssue$createIssue$issue _instance;

  final TRes Function(Mutation$CreateIssue$createIssue$issue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? number = _undefined,
    Object? state = _undefined,
    Object? author = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateIssue$createIssue$issue(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        number: number == _undefined || number == null
            ? _instance.number
            : (number as int),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as Enum$IssueState),
        author: author == _undefined
            ? _instance.author
            : (author as Mutation$CreateIssue$createIssue$issue$author?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateIssue$createIssue$issue$author<TRes> get author {
    final local$author = _instance.author;
    return local$author == null
        ? CopyWith$Mutation$CreateIssue$createIssue$issue$author.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateIssue$createIssue$issue$author(
            local$author, (e) => call(author: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue<TRes>
    implements CopyWith$Mutation$CreateIssue$createIssue$issue<TRes> {
  _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    int? number,
    Enum$IssueState? state,
    Mutation$CreateIssue$createIssue$issue$author? author,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateIssue$createIssue$issue$author<TRes> get author =>
      CopyWith$Mutation$CreateIssue$createIssue$issue$author.stub(_res);
}

class Mutation$CreateIssue$createIssue$issue$author {
  Mutation$CreateIssue$createIssue$issue$author({
    required this.login,
    required this.$__typename,
  });

  factory Mutation$CreateIssue$createIssue$issue$author.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Bot":
        return Mutation$CreateIssue$createIssue$issue$author$$Bot.fromJson(
            json);

      case "EnterpriseUserAccount":
        return Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount
            .fromJson(json);

      case "Mannequin":
        return Mutation$CreateIssue$createIssue$issue$author$$Mannequin
            .fromJson(json);

      case "Organization":
        return Mutation$CreateIssue$createIssue$issue$author$$Organization
            .fromJson(json);

      case "User":
        return Mutation$CreateIssue$createIssue$issue$author$$User.fromJson(
            json);

      default:
        final l$login = json['login'];
        final l$$__typename = json['__typename'];
        return Mutation$CreateIssue$createIssue$issue$author(
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
    if (other is! Mutation$CreateIssue$createIssue$issue$author ||
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

extension UtilityExtension$Mutation$CreateIssue$createIssue$issue$author
    on Mutation$CreateIssue$createIssue$issue$author {
  CopyWith$Mutation$CreateIssue$createIssue$issue$author<
          Mutation$CreateIssue$createIssue$issue$author>
      get copyWith => CopyWith$Mutation$CreateIssue$createIssue$issue$author(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Mutation$CreateIssue$createIssue$issue$author$$Bot)
        bot,
    required _T Function(
            Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount)
        enterpriseUserAccount,
    required _T Function(
            Mutation$CreateIssue$createIssue$issue$author$$Mannequin)
        mannequin,
    required _T Function(
            Mutation$CreateIssue$createIssue$issue$author$$Organization)
        organization,
    required _T Function(Mutation$CreateIssue$createIssue$issue$author$$User)
        user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Bot":
        return bot(this as Mutation$CreateIssue$createIssue$issue$author$$Bot);

      case "EnterpriseUserAccount":
        return enterpriseUserAccount(this
            as Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount);

      case "Mannequin":
        return mannequin(
            this as Mutation$CreateIssue$createIssue$issue$author$$Mannequin);

      case "Organization":
        return organization(this
            as Mutation$CreateIssue$createIssue$issue$author$$Organization);

      case "User":
        return user(
            this as Mutation$CreateIssue$createIssue$issue$author$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$CreateIssue$createIssue$issue$author$$Bot)? bot,
    _T Function(
            Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount)?
        enterpriseUserAccount,
    _T Function(Mutation$CreateIssue$createIssue$issue$author$$Mannequin)?
        mannequin,
    _T Function(Mutation$CreateIssue$createIssue$issue$author$$Organization)?
        organization,
    _T Function(Mutation$CreateIssue$createIssue$issue$author$$User)? user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Bot":
        if (bot != null) {
          return bot(
              this as Mutation$CreateIssue$createIssue$issue$author$$Bot);
        } else {
          return orElse();
        }

      case "EnterpriseUserAccount":
        if (enterpriseUserAccount != null) {
          return enterpriseUserAccount(this
              as Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount);
        } else {
          return orElse();
        }

      case "Mannequin":
        if (mannequin != null) {
          return mannequin(
              this as Mutation$CreateIssue$createIssue$issue$author$$Mannequin);
        } else {
          return orElse();
        }

      case "Organization":
        if (organization != null) {
          return organization(this
              as Mutation$CreateIssue$createIssue$issue$author$$Organization);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(
              this as Mutation$CreateIssue$createIssue$issue$author$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$CreateIssue$createIssue$issue$author<TRes> {
  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author(
    Mutation$CreateIssue$createIssue$issue$author instance,
    TRes Function(Mutation$CreateIssue$createIssue$issue$author) then,
  ) = _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author;

  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author<TRes>
    implements CopyWith$Mutation$CreateIssue$createIssue$issue$author<TRes> {
  _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author(
    this._instance,
    this._then,
  );

  final Mutation$CreateIssue$createIssue$issue$author _instance;

  final TRes Function(Mutation$CreateIssue$createIssue$issue$author) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateIssue$createIssue$issue$author(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author<TRes>
    implements CopyWith$Mutation$CreateIssue$createIssue$issue$author<TRes> {
  _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author(this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateIssue$createIssue$issue$author$$Bot
    implements Mutation$CreateIssue$createIssue$issue$author {
  Mutation$CreateIssue$createIssue$issue$author$$Bot({
    required this.login,
    this.$__typename = 'Bot',
  });

  factory Mutation$CreateIssue$createIssue$issue$author$$Bot.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateIssue$createIssue$issue$author$$Bot(
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
    if (other is! Mutation$CreateIssue$createIssue$issue$author$$Bot ||
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

extension UtilityExtension$Mutation$CreateIssue$createIssue$issue$author$$Bot
    on Mutation$CreateIssue$createIssue$issue$author$$Bot {
  CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Bot<
          Mutation$CreateIssue$createIssue$issue$author$$Bot>
      get copyWith =>
          CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Bot(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Bot<
    TRes> {
  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Bot(
    Mutation$CreateIssue$createIssue$issue$author$$Bot instance,
    TRes Function(Mutation$CreateIssue$createIssue$issue$author$$Bot) then,
  ) = _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$Bot;

  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Bot.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$Bot;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$Bot<TRes>
    implements
        CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Bot<TRes> {
  _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$Bot(
    this._instance,
    this._then,
  );

  final Mutation$CreateIssue$createIssue$issue$author$$Bot _instance;

  final TRes Function(Mutation$CreateIssue$createIssue$issue$author$$Bot) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateIssue$createIssue$issue$author$$Bot(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$Bot<TRes>
    implements
        CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Bot<TRes> {
  _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$Bot(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount
    implements Mutation$CreateIssue$createIssue$issue$author {
  Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount({
    required this.login,
    this.$__typename = 'EnterpriseUserAccount',
  });

  factory Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount(
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
            is! Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount ||
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

extension UtilityExtension$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount
    on Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount {
  CopyWith$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount<
          Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount>
      get copyWith =>
          CopyWith$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount<
    TRes> {
  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount(
    Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount
        instance,
    TRes Function(
            Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount)
        then,
  ) = _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount;

  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount<
        TRes>
    implements
        CopyWith$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount<
            TRes> {
  _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount(
    this._instance,
    this._then,
  );

  final Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount
      _instance;

  final TRes Function(
          Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount<
        TRes>
    implements
        CopyWith$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$EnterpriseUserAccount(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateIssue$createIssue$issue$author$$Mannequin
    implements Mutation$CreateIssue$createIssue$issue$author {
  Mutation$CreateIssue$createIssue$issue$author$$Mannequin({
    required this.login,
    this.$__typename = 'Mannequin',
  });

  factory Mutation$CreateIssue$createIssue$issue$author$$Mannequin.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateIssue$createIssue$issue$author$$Mannequin(
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
    if (other is! Mutation$CreateIssue$createIssue$issue$author$$Mannequin ||
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

extension UtilityExtension$Mutation$CreateIssue$createIssue$issue$author$$Mannequin
    on Mutation$CreateIssue$createIssue$issue$author$$Mannequin {
  CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Mannequin<
          Mutation$CreateIssue$createIssue$issue$author$$Mannequin>
      get copyWith =>
          CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Mannequin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Mannequin<
    TRes> {
  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Mannequin(
    Mutation$CreateIssue$createIssue$issue$author$$Mannequin instance,
    TRes Function(Mutation$CreateIssue$createIssue$issue$author$$Mannequin)
        then,
  ) = _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$Mannequin;

  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Mannequin.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$Mannequin;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$Mannequin<
        TRes>
    implements
        CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Mannequin<
            TRes> {
  _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$Mannequin(
    this._instance,
    this._then,
  );

  final Mutation$CreateIssue$createIssue$issue$author$$Mannequin _instance;

  final TRes Function(Mutation$CreateIssue$createIssue$issue$author$$Mannequin)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateIssue$createIssue$issue$author$$Mannequin(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$Mannequin<
        TRes>
    implements
        CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Mannequin<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$Mannequin(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateIssue$createIssue$issue$author$$Organization
    implements Mutation$CreateIssue$createIssue$issue$author {
  Mutation$CreateIssue$createIssue$issue$author$$Organization({
    required this.login,
    this.$__typename = 'Organization',
  });

  factory Mutation$CreateIssue$createIssue$issue$author$$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateIssue$createIssue$issue$author$$Organization(
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
    if (other is! Mutation$CreateIssue$createIssue$issue$author$$Organization ||
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

extension UtilityExtension$Mutation$CreateIssue$createIssue$issue$author$$Organization
    on Mutation$CreateIssue$createIssue$issue$author$$Organization {
  CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Organization<
          Mutation$CreateIssue$createIssue$issue$author$$Organization>
      get copyWith =>
          CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Organization<
    TRes> {
  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Organization(
    Mutation$CreateIssue$createIssue$issue$author$$Organization instance,
    TRes Function(Mutation$CreateIssue$createIssue$issue$author$$Organization)
        then,
  ) = _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$Organization;

  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Organization.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$Organization;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$Organization<
        TRes>
    implements
        CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Organization<
            TRes> {
  _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$Organization(
    this._instance,
    this._then,
  );

  final Mutation$CreateIssue$createIssue$issue$author$$Organization _instance;

  final TRes Function(
      Mutation$CreateIssue$createIssue$issue$author$$Organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateIssue$createIssue$issue$author$$Organization(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$Organization<
        TRes>
    implements
        CopyWith$Mutation$CreateIssue$createIssue$issue$author$$Organization<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$Organization(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateIssue$createIssue$issue$author$$User
    implements Mutation$CreateIssue$createIssue$issue$author {
  Mutation$CreateIssue$createIssue$issue$author$$User({
    required this.login,
    this.$__typename = 'User',
  });

  factory Mutation$CreateIssue$createIssue$issue$author$$User.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateIssue$createIssue$issue$author$$User(
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
    if (other is! Mutation$CreateIssue$createIssue$issue$author$$User ||
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

extension UtilityExtension$Mutation$CreateIssue$createIssue$issue$author$$User
    on Mutation$CreateIssue$createIssue$issue$author$$User {
  CopyWith$Mutation$CreateIssue$createIssue$issue$author$$User<
          Mutation$CreateIssue$createIssue$issue$author$$User>
      get copyWith =>
          CopyWith$Mutation$CreateIssue$createIssue$issue$author$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateIssue$createIssue$issue$author$$User<
    TRes> {
  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author$$User(
    Mutation$CreateIssue$createIssue$issue$author$$User instance,
    TRes Function(Mutation$CreateIssue$createIssue$issue$author$$User) then,
  ) = _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$User;

  factory CopyWith$Mutation$CreateIssue$createIssue$issue$author$$User.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$User;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$User<TRes>
    implements
        CopyWith$Mutation$CreateIssue$createIssue$issue$author$$User<TRes> {
  _CopyWithImpl$Mutation$CreateIssue$createIssue$issue$author$$User(
    this._instance,
    this._then,
  );

  final Mutation$CreateIssue$createIssue$issue$author$$User _instance;

  final TRes Function(Mutation$CreateIssue$createIssue$issue$author$$User)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateIssue$createIssue$issue$author$$User(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$User<
        TRes>
    implements
        CopyWith$Mutation$CreateIssue$createIssue$issue$author$$User<TRes> {
  _CopyWithStubImpl$Mutation$CreateIssue$createIssue$issue$author$$User(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}
