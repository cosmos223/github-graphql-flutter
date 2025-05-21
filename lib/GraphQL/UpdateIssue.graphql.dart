import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UpdateIssue {
  factory Variables$Mutation$UpdateIssue({
    required String id,
    required String title,
    String? body,
  }) =>
      Variables$Mutation$UpdateIssue._({
        r'id': id,
        r'title': title,
        if (body != null) r'body': body,
      });

  Variables$Mutation$UpdateIssue._(this._$data);

  factory Variables$Mutation$UpdateIssue.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('body')) {
      final l$body = data['body'];
      result$data['body'] = (l$body as String?);
    }
    return Variables$Mutation$UpdateIssue._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get title => (_$data['title'] as String);

  String? get body => (_$data['body'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('body')) {
      final l$body = body;
      result$data['body'] = l$body;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateIssue<Variables$Mutation$UpdateIssue>
      get copyWith => CopyWith$Variables$Mutation$UpdateIssue(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateIssue ||
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
    final l$id = id;
    final l$title = title;
    final l$body = body;
    return Object.hashAll([
      l$id,
      l$title,
      _$data.containsKey('body') ? l$body : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateIssue<TRes> {
  factory CopyWith$Variables$Mutation$UpdateIssue(
    Variables$Mutation$UpdateIssue instance,
    TRes Function(Variables$Mutation$UpdateIssue) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateIssue;

  factory CopyWith$Variables$Mutation$UpdateIssue.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateIssue;

  TRes call({
    String? id,
    String? title,
    String? body,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateIssue<TRes>
    implements CopyWith$Variables$Mutation$UpdateIssue<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateIssue(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateIssue _instance;

  final TRes Function(Variables$Mutation$UpdateIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? body = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateIssue._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (title != _undefined && title != null) 'title': (title as String),
        if (body != _undefined) 'body': (body as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateIssue<TRes>
    implements CopyWith$Variables$Mutation$UpdateIssue<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateIssue(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? body,
  }) =>
      _res;
}

class Mutation$UpdateIssue {
  Mutation$UpdateIssue({
    this.updateIssue,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateIssue.fromJson(Map<String, dynamic> json) {
    final l$updateIssue = json['updateIssue'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateIssue(
      updateIssue: l$updateIssue == null
          ? null
          : Mutation$UpdateIssue$updateIssue.fromJson(
              (l$updateIssue as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateIssue$updateIssue? updateIssue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateIssue = updateIssue;
    _resultData['updateIssue'] = l$updateIssue?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateIssue = updateIssue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateIssue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateIssue || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateIssue = updateIssue;
    final lOther$updateIssue = other.updateIssue;
    if (l$updateIssue != lOther$updateIssue) {
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

extension UtilityExtension$Mutation$UpdateIssue on Mutation$UpdateIssue {
  CopyWith$Mutation$UpdateIssue<Mutation$UpdateIssue> get copyWith =>
      CopyWith$Mutation$UpdateIssue(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateIssue<TRes> {
  factory CopyWith$Mutation$UpdateIssue(
    Mutation$UpdateIssue instance,
    TRes Function(Mutation$UpdateIssue) then,
  ) = _CopyWithImpl$Mutation$UpdateIssue;

  factory CopyWith$Mutation$UpdateIssue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateIssue;

  TRes call({
    Mutation$UpdateIssue$updateIssue? updateIssue,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateIssue$updateIssue<TRes> get updateIssue;
}

class _CopyWithImpl$Mutation$UpdateIssue<TRes>
    implements CopyWith$Mutation$UpdateIssue<TRes> {
  _CopyWithImpl$Mutation$UpdateIssue(
    this._instance,
    this._then,
  );

  final Mutation$UpdateIssue _instance;

  final TRes Function(Mutation$UpdateIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateIssue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateIssue(
        updateIssue: updateIssue == _undefined
            ? _instance.updateIssue
            : (updateIssue as Mutation$UpdateIssue$updateIssue?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateIssue$updateIssue<TRes> get updateIssue {
    final local$updateIssue = _instance.updateIssue;
    return local$updateIssue == null
        ? CopyWith$Mutation$UpdateIssue$updateIssue.stub(_then(_instance))
        : CopyWith$Mutation$UpdateIssue$updateIssue(
            local$updateIssue, (e) => call(updateIssue: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateIssue<TRes>
    implements CopyWith$Mutation$UpdateIssue<TRes> {
  _CopyWithStubImpl$Mutation$UpdateIssue(this._res);

  TRes _res;

  call({
    Mutation$UpdateIssue$updateIssue? updateIssue,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateIssue$updateIssue<TRes> get updateIssue =>
      CopyWith$Mutation$UpdateIssue$updateIssue.stub(_res);
}

const documentNodeMutationUpdateIssue = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateIssue'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'updateIssue'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
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
            name: NameNode(value: 'clientMutationId'),
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
]);
Mutation$UpdateIssue _parserFn$Mutation$UpdateIssue(
        Map<String, dynamic> data) =>
    Mutation$UpdateIssue.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateIssue = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateIssue?,
);

class Options$Mutation$UpdateIssue
    extends graphql.MutationOptions<Mutation$UpdateIssue> {
  Options$Mutation$UpdateIssue({
    String? operationName,
    required Variables$Mutation$UpdateIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateIssue? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateIssue? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateIssue>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateIssue(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateIssue,
          parserFn: _parserFn$Mutation$UpdateIssue,
        );

  final OnMutationCompleted$Mutation$UpdateIssue? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateIssue
    extends graphql.WatchQueryOptions<Mutation$UpdateIssue> {
  WatchOptions$Mutation$UpdateIssue({
    String? operationName,
    required Variables$Mutation$UpdateIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateIssue? typedOptimisticResult,
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
          document: documentNodeMutationUpdateIssue,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateIssue,
        );
}

extension ClientExtension$Mutation$UpdateIssue on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateIssue>> mutate$UpdateIssue(
          Options$Mutation$UpdateIssue options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateIssue> watchMutation$UpdateIssue(
          WatchOptions$Mutation$UpdateIssue options) =>
      this.watchMutation(options);
}

class Mutation$UpdateIssue$HookResult {
  Mutation$UpdateIssue$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateIssue runMutation;

  final graphql.QueryResult<Mutation$UpdateIssue> result;
}

Mutation$UpdateIssue$HookResult useMutation$UpdateIssue(
    [WidgetOptions$Mutation$UpdateIssue? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateIssue());
  return Mutation$UpdateIssue$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateIssue> useWatchMutation$UpdateIssue(
        WatchOptions$Mutation$UpdateIssue options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateIssue
    extends graphql.MutationOptions<Mutation$UpdateIssue> {
  WidgetOptions$Mutation$UpdateIssue({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateIssue? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateIssue? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateIssue>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateIssue(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateIssue,
          parserFn: _parserFn$Mutation$UpdateIssue,
        );

  final OnMutationCompleted$Mutation$UpdateIssue? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateIssue
    = graphql.MultiSourceResult<Mutation$UpdateIssue> Function(
  Variables$Mutation$UpdateIssue, {
  Object? optimisticResult,
  Mutation$UpdateIssue? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateIssue = widgets.Widget Function(
  RunMutation$Mutation$UpdateIssue,
  graphql.QueryResult<Mutation$UpdateIssue>?,
);

class Mutation$UpdateIssue$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateIssue> {
  Mutation$UpdateIssue$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateIssue? options,
    required Builder$Mutation$UpdateIssue builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateIssue(),
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

class Mutation$UpdateIssue$updateIssue {
  Mutation$UpdateIssue$updateIssue({
    this.clientMutationId,
    this.$__typename = 'UpdateIssuePayload',
  });

  factory Mutation$UpdateIssue$updateIssue.fromJson(Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateIssue$updateIssue(
      clientMutationId: (l$clientMutationId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? clientMutationId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientMutationId = clientMutationId;
    _resultData['clientMutationId'] = l$clientMutationId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clientMutationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateIssue$updateIssue ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) {
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

extension UtilityExtension$Mutation$UpdateIssue$updateIssue
    on Mutation$UpdateIssue$updateIssue {
  CopyWith$Mutation$UpdateIssue$updateIssue<Mutation$UpdateIssue$updateIssue>
      get copyWith => CopyWith$Mutation$UpdateIssue$updateIssue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateIssue$updateIssue<TRes> {
  factory CopyWith$Mutation$UpdateIssue$updateIssue(
    Mutation$UpdateIssue$updateIssue instance,
    TRes Function(Mutation$UpdateIssue$updateIssue) then,
  ) = _CopyWithImpl$Mutation$UpdateIssue$updateIssue;

  factory CopyWith$Mutation$UpdateIssue$updateIssue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateIssue$updateIssue;

  TRes call({
    String? clientMutationId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateIssue$updateIssue<TRes>
    implements CopyWith$Mutation$UpdateIssue$updateIssue<TRes> {
  _CopyWithImpl$Mutation$UpdateIssue$updateIssue(
    this._instance,
    this._then,
  );

  final Mutation$UpdateIssue$updateIssue _instance;

  final TRes Function(Mutation$UpdateIssue$updateIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateIssue$updateIssue(
        clientMutationId: clientMutationId == _undefined
            ? _instance.clientMutationId
            : (clientMutationId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateIssue$updateIssue<TRes>
    implements CopyWith$Mutation$UpdateIssue$updateIssue<TRes> {
  _CopyWithStubImpl$Mutation$UpdateIssue$updateIssue(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    String? $__typename,
  }) =>
      _res;
}
