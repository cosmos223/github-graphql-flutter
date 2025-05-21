import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$DeleteIssue {
  factory Variables$Mutation$DeleteIssue({required String issueId}) =>
      Variables$Mutation$DeleteIssue._({
        r'issueId': issueId,
      });

  Variables$Mutation$DeleteIssue._(this._$data);

  factory Variables$Mutation$DeleteIssue.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$issueId = data['issueId'];
    result$data['issueId'] = (l$issueId as String);
    return Variables$Mutation$DeleteIssue._(result$data);
  }

  Map<String, dynamic> _$data;

  String get issueId => (_$data['issueId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$issueId = issueId;
    result$data['issueId'] = l$issueId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteIssue<Variables$Mutation$DeleteIssue>
      get copyWith => CopyWith$Variables$Mutation$DeleteIssue(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteIssue ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$issueId = issueId;
    final lOther$issueId = other.issueId;
    if (l$issueId != lOther$issueId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$issueId = issueId;
    return Object.hashAll([l$issueId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteIssue<TRes> {
  factory CopyWith$Variables$Mutation$DeleteIssue(
    Variables$Mutation$DeleteIssue instance,
    TRes Function(Variables$Mutation$DeleteIssue) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteIssue;

  factory CopyWith$Variables$Mutation$DeleteIssue.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteIssue;

  TRes call({String? issueId});
}

class _CopyWithImpl$Variables$Mutation$DeleteIssue<TRes>
    implements CopyWith$Variables$Mutation$DeleteIssue<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteIssue(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteIssue _instance;

  final TRes Function(Variables$Mutation$DeleteIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? issueId = _undefined}) =>
      _then(Variables$Mutation$DeleteIssue._({
        ..._instance._$data,
        if (issueId != _undefined && issueId != null)
          'issueId': (issueId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteIssue<TRes>
    implements CopyWith$Variables$Mutation$DeleteIssue<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteIssue(this._res);

  TRes _res;

  call({String? issueId}) => _res;
}

class Mutation$DeleteIssue {
  Mutation$DeleteIssue({
    this.deleteIssue,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteIssue.fromJson(Map<String, dynamic> json) {
    final l$deleteIssue = json['deleteIssue'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteIssue(
      deleteIssue: l$deleteIssue == null
          ? null
          : Mutation$DeleteIssue$deleteIssue.fromJson(
              (l$deleteIssue as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteIssue$deleteIssue? deleteIssue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteIssue = deleteIssue;
    _resultData['deleteIssue'] = l$deleteIssue?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteIssue = deleteIssue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteIssue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteIssue || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteIssue = deleteIssue;
    final lOther$deleteIssue = other.deleteIssue;
    if (l$deleteIssue != lOther$deleteIssue) {
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

extension UtilityExtension$Mutation$DeleteIssue on Mutation$DeleteIssue {
  CopyWith$Mutation$DeleteIssue<Mutation$DeleteIssue> get copyWith =>
      CopyWith$Mutation$DeleteIssue(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteIssue<TRes> {
  factory CopyWith$Mutation$DeleteIssue(
    Mutation$DeleteIssue instance,
    TRes Function(Mutation$DeleteIssue) then,
  ) = _CopyWithImpl$Mutation$DeleteIssue;

  factory CopyWith$Mutation$DeleteIssue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteIssue;

  TRes call({
    Mutation$DeleteIssue$deleteIssue? deleteIssue,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteIssue$deleteIssue<TRes> get deleteIssue;
}

class _CopyWithImpl$Mutation$DeleteIssue<TRes>
    implements CopyWith$Mutation$DeleteIssue<TRes> {
  _CopyWithImpl$Mutation$DeleteIssue(
    this._instance,
    this._then,
  );

  final Mutation$DeleteIssue _instance;

  final TRes Function(Mutation$DeleteIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteIssue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteIssue(
        deleteIssue: deleteIssue == _undefined
            ? _instance.deleteIssue
            : (deleteIssue as Mutation$DeleteIssue$deleteIssue?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteIssue$deleteIssue<TRes> get deleteIssue {
    final local$deleteIssue = _instance.deleteIssue;
    return local$deleteIssue == null
        ? CopyWith$Mutation$DeleteIssue$deleteIssue.stub(_then(_instance))
        : CopyWith$Mutation$DeleteIssue$deleteIssue(
            local$deleteIssue, (e) => call(deleteIssue: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteIssue<TRes>
    implements CopyWith$Mutation$DeleteIssue<TRes> {
  _CopyWithStubImpl$Mutation$DeleteIssue(this._res);

  TRes _res;

  call({
    Mutation$DeleteIssue$deleteIssue? deleteIssue,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteIssue$deleteIssue<TRes> get deleteIssue =>
      CopyWith$Mutation$DeleteIssue$deleteIssue.stub(_res);
}

const documentNodeMutationDeleteIssue = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteIssue'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'issueId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteIssue'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'issueId'),
                value: VariableNode(name: NameNode(value: 'issueId')),
              )
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
Mutation$DeleteIssue _parserFn$Mutation$DeleteIssue(
        Map<String, dynamic> data) =>
    Mutation$DeleteIssue.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteIssue = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteIssue?,
);

class Options$Mutation$DeleteIssue
    extends graphql.MutationOptions<Mutation$DeleteIssue> {
  Options$Mutation$DeleteIssue({
    String? operationName,
    required Variables$Mutation$DeleteIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteIssue? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteIssue? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteIssue>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteIssue(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteIssue,
          parserFn: _parserFn$Mutation$DeleteIssue,
        );

  final OnMutationCompleted$Mutation$DeleteIssue? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteIssue
    extends graphql.WatchQueryOptions<Mutation$DeleteIssue> {
  WatchOptions$Mutation$DeleteIssue({
    String? operationName,
    required Variables$Mutation$DeleteIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteIssue? typedOptimisticResult,
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
          document: documentNodeMutationDeleteIssue,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteIssue,
        );
}

extension ClientExtension$Mutation$DeleteIssue on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteIssue>> mutate$DeleteIssue(
          Options$Mutation$DeleteIssue options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteIssue> watchMutation$DeleteIssue(
          WatchOptions$Mutation$DeleteIssue options) =>
      this.watchMutation(options);
}

class Mutation$DeleteIssue$HookResult {
  Mutation$DeleteIssue$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteIssue runMutation;

  final graphql.QueryResult<Mutation$DeleteIssue> result;
}

Mutation$DeleteIssue$HookResult useMutation$DeleteIssue(
    [WidgetOptions$Mutation$DeleteIssue? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteIssue());
  return Mutation$DeleteIssue$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteIssue> useWatchMutation$DeleteIssue(
        WatchOptions$Mutation$DeleteIssue options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteIssue
    extends graphql.MutationOptions<Mutation$DeleteIssue> {
  WidgetOptions$Mutation$DeleteIssue({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteIssue? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteIssue? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteIssue>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteIssue(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteIssue,
          parserFn: _parserFn$Mutation$DeleteIssue,
        );

  final OnMutationCompleted$Mutation$DeleteIssue? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteIssue
    = graphql.MultiSourceResult<Mutation$DeleteIssue> Function(
  Variables$Mutation$DeleteIssue, {
  Object? optimisticResult,
  Mutation$DeleteIssue? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteIssue = widgets.Widget Function(
  RunMutation$Mutation$DeleteIssue,
  graphql.QueryResult<Mutation$DeleteIssue>?,
);

class Mutation$DeleteIssue$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteIssue> {
  Mutation$DeleteIssue$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteIssue? options,
    required Builder$Mutation$DeleteIssue builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteIssue(),
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

class Mutation$DeleteIssue$deleteIssue {
  Mutation$DeleteIssue$deleteIssue({
    this.clientMutationId,
    this.$__typename = 'DeleteIssuePayload',
  });

  factory Mutation$DeleteIssue$deleteIssue.fromJson(Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteIssue$deleteIssue(
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
    if (other is! Mutation$DeleteIssue$deleteIssue ||
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

extension UtilityExtension$Mutation$DeleteIssue$deleteIssue
    on Mutation$DeleteIssue$deleteIssue {
  CopyWith$Mutation$DeleteIssue$deleteIssue<Mutation$DeleteIssue$deleteIssue>
      get copyWith => CopyWith$Mutation$DeleteIssue$deleteIssue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteIssue$deleteIssue<TRes> {
  factory CopyWith$Mutation$DeleteIssue$deleteIssue(
    Mutation$DeleteIssue$deleteIssue instance,
    TRes Function(Mutation$DeleteIssue$deleteIssue) then,
  ) = _CopyWithImpl$Mutation$DeleteIssue$deleteIssue;

  factory CopyWith$Mutation$DeleteIssue$deleteIssue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteIssue$deleteIssue;

  TRes call({
    String? clientMutationId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteIssue$deleteIssue<TRes>
    implements CopyWith$Mutation$DeleteIssue$deleteIssue<TRes> {
  _CopyWithImpl$Mutation$DeleteIssue$deleteIssue(
    this._instance,
    this._then,
  );

  final Mutation$DeleteIssue$deleteIssue _instance;

  final TRes Function(Mutation$DeleteIssue$deleteIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteIssue$deleteIssue(
        clientMutationId: clientMutationId == _undefined
            ? _instance.clientMutationId
            : (clientMutationId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteIssue$deleteIssue<TRes>
    implements CopyWith$Mutation$DeleteIssue$deleteIssue<TRes> {
  _CopyWithStubImpl$Mutation$DeleteIssue$deleteIssue(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    String? $__typename,
  }) =>
      _res;
}
