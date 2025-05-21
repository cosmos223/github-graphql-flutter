import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$DeleteIssueComment {
  factory Variables$Mutation$DeleteIssueComment({required String id}) =>
      Variables$Mutation$DeleteIssueComment._({
        r'id': id,
      });

  Variables$Mutation$DeleteIssueComment._(this._$data);

  factory Variables$Mutation$DeleteIssueComment.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteIssueComment._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteIssueComment<
          Variables$Mutation$DeleteIssueComment>
      get copyWith => CopyWith$Variables$Mutation$DeleteIssueComment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteIssueComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteIssueComment<TRes> {
  factory CopyWith$Variables$Mutation$DeleteIssueComment(
    Variables$Mutation$DeleteIssueComment instance,
    TRes Function(Variables$Mutation$DeleteIssueComment) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteIssueComment;

  factory CopyWith$Variables$Mutation$DeleteIssueComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteIssueComment;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteIssueComment<TRes>
    implements CopyWith$Variables$Mutation$DeleteIssueComment<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteIssueComment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteIssueComment _instance;

  final TRes Function(Variables$Mutation$DeleteIssueComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteIssueComment._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteIssueComment<TRes>
    implements CopyWith$Variables$Mutation$DeleteIssueComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteIssueComment(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteIssueComment {
  Mutation$DeleteIssueComment({
    this.deleteIssueComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteIssueComment.fromJson(Map<String, dynamic> json) {
    final l$deleteIssueComment = json['deleteIssueComment'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteIssueComment(
      deleteIssueComment: l$deleteIssueComment == null
          ? null
          : Mutation$DeleteIssueComment$deleteIssueComment.fromJson(
              (l$deleteIssueComment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteIssueComment$deleteIssueComment? deleteIssueComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteIssueComment = deleteIssueComment;
    _resultData['deleteIssueComment'] = l$deleteIssueComment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteIssueComment = deleteIssueComment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteIssueComment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteIssueComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteIssueComment = deleteIssueComment;
    final lOther$deleteIssueComment = other.deleteIssueComment;
    if (l$deleteIssueComment != lOther$deleteIssueComment) {
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

extension UtilityExtension$Mutation$DeleteIssueComment
    on Mutation$DeleteIssueComment {
  CopyWith$Mutation$DeleteIssueComment<Mutation$DeleteIssueComment>
      get copyWith => CopyWith$Mutation$DeleteIssueComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteIssueComment<TRes> {
  factory CopyWith$Mutation$DeleteIssueComment(
    Mutation$DeleteIssueComment instance,
    TRes Function(Mutation$DeleteIssueComment) then,
  ) = _CopyWithImpl$Mutation$DeleteIssueComment;

  factory CopyWith$Mutation$DeleteIssueComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteIssueComment;

  TRes call({
    Mutation$DeleteIssueComment$deleteIssueComment? deleteIssueComment,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteIssueComment$deleteIssueComment<TRes>
      get deleteIssueComment;
}

class _CopyWithImpl$Mutation$DeleteIssueComment<TRes>
    implements CopyWith$Mutation$DeleteIssueComment<TRes> {
  _CopyWithImpl$Mutation$DeleteIssueComment(
    this._instance,
    this._then,
  );

  final Mutation$DeleteIssueComment _instance;

  final TRes Function(Mutation$DeleteIssueComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteIssueComment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteIssueComment(
        deleteIssueComment: deleteIssueComment == _undefined
            ? _instance.deleteIssueComment
            : (deleteIssueComment
                as Mutation$DeleteIssueComment$deleteIssueComment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteIssueComment$deleteIssueComment<TRes>
      get deleteIssueComment {
    final local$deleteIssueComment = _instance.deleteIssueComment;
    return local$deleteIssueComment == null
        ? CopyWith$Mutation$DeleteIssueComment$deleteIssueComment.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteIssueComment$deleteIssueComment(
            local$deleteIssueComment, (e) => call(deleteIssueComment: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteIssueComment<TRes>
    implements CopyWith$Mutation$DeleteIssueComment<TRes> {
  _CopyWithStubImpl$Mutation$DeleteIssueComment(this._res);

  TRes _res;

  call({
    Mutation$DeleteIssueComment$deleteIssueComment? deleteIssueComment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteIssueComment$deleteIssueComment<TRes>
      get deleteIssueComment =>
          CopyWith$Mutation$DeleteIssueComment$deleteIssueComment.stub(_res);
}

const documentNodeMutationDeleteIssueComment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteIssueComment'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'deleteIssueComment'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
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
Mutation$DeleteIssueComment _parserFn$Mutation$DeleteIssueComment(
        Map<String, dynamic> data) =>
    Mutation$DeleteIssueComment.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteIssueComment = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteIssueComment?,
);

class Options$Mutation$DeleteIssueComment
    extends graphql.MutationOptions<Mutation$DeleteIssueComment> {
  Options$Mutation$DeleteIssueComment({
    String? operationName,
    required Variables$Mutation$DeleteIssueComment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteIssueComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteIssueComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteIssueComment>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteIssueComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteIssueComment,
          parserFn: _parserFn$Mutation$DeleteIssueComment,
        );

  final OnMutationCompleted$Mutation$DeleteIssueComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteIssueComment
    extends graphql.WatchQueryOptions<Mutation$DeleteIssueComment> {
  WatchOptions$Mutation$DeleteIssueComment({
    String? operationName,
    required Variables$Mutation$DeleteIssueComment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteIssueComment? typedOptimisticResult,
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
          document: documentNodeMutationDeleteIssueComment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteIssueComment,
        );
}

extension ClientExtension$Mutation$DeleteIssueComment on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteIssueComment>>
      mutate$DeleteIssueComment(
              Options$Mutation$DeleteIssueComment options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteIssueComment>
      watchMutation$DeleteIssueComment(
              WatchOptions$Mutation$DeleteIssueComment options) =>
          this.watchMutation(options);
}

class Mutation$DeleteIssueComment$HookResult {
  Mutation$DeleteIssueComment$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteIssueComment runMutation;

  final graphql.QueryResult<Mutation$DeleteIssueComment> result;
}

Mutation$DeleteIssueComment$HookResult useMutation$DeleteIssueComment(
    [WidgetOptions$Mutation$DeleteIssueComment? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteIssueComment());
  return Mutation$DeleteIssueComment$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteIssueComment>
    useWatchMutation$DeleteIssueComment(
            WatchOptions$Mutation$DeleteIssueComment options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteIssueComment
    extends graphql.MutationOptions<Mutation$DeleteIssueComment> {
  WidgetOptions$Mutation$DeleteIssueComment({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteIssueComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteIssueComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteIssueComment>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteIssueComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteIssueComment,
          parserFn: _parserFn$Mutation$DeleteIssueComment,
        );

  final OnMutationCompleted$Mutation$DeleteIssueComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteIssueComment
    = graphql.MultiSourceResult<Mutation$DeleteIssueComment> Function(
  Variables$Mutation$DeleteIssueComment, {
  Object? optimisticResult,
  Mutation$DeleteIssueComment? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteIssueComment = widgets.Widget Function(
  RunMutation$Mutation$DeleteIssueComment,
  graphql.QueryResult<Mutation$DeleteIssueComment>?,
);

class Mutation$DeleteIssueComment$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteIssueComment> {
  Mutation$DeleteIssueComment$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteIssueComment? options,
    required Builder$Mutation$DeleteIssueComment builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteIssueComment(),
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

class Mutation$DeleteIssueComment$deleteIssueComment {
  Mutation$DeleteIssueComment$deleteIssueComment({
    this.clientMutationId,
    this.$__typename = 'DeleteIssueCommentPayload',
  });

  factory Mutation$DeleteIssueComment$deleteIssueComment.fromJson(
      Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteIssueComment$deleteIssueComment(
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
    if (other is! Mutation$DeleteIssueComment$deleteIssueComment ||
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

extension UtilityExtension$Mutation$DeleteIssueComment$deleteIssueComment
    on Mutation$DeleteIssueComment$deleteIssueComment {
  CopyWith$Mutation$DeleteIssueComment$deleteIssueComment<
          Mutation$DeleteIssueComment$deleteIssueComment>
      get copyWith => CopyWith$Mutation$DeleteIssueComment$deleteIssueComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteIssueComment$deleteIssueComment<TRes> {
  factory CopyWith$Mutation$DeleteIssueComment$deleteIssueComment(
    Mutation$DeleteIssueComment$deleteIssueComment instance,
    TRes Function(Mutation$DeleteIssueComment$deleteIssueComment) then,
  ) = _CopyWithImpl$Mutation$DeleteIssueComment$deleteIssueComment;

  factory CopyWith$Mutation$DeleteIssueComment$deleteIssueComment.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteIssueComment$deleteIssueComment;

  TRes call({
    String? clientMutationId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteIssueComment$deleteIssueComment<TRes>
    implements CopyWith$Mutation$DeleteIssueComment$deleteIssueComment<TRes> {
  _CopyWithImpl$Mutation$DeleteIssueComment$deleteIssueComment(
    this._instance,
    this._then,
  );

  final Mutation$DeleteIssueComment$deleteIssueComment _instance;

  final TRes Function(Mutation$DeleteIssueComment$deleteIssueComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteIssueComment$deleteIssueComment(
        clientMutationId: clientMutationId == _undefined
            ? _instance.clientMutationId
            : (clientMutationId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteIssueComment$deleteIssueComment<TRes>
    implements CopyWith$Mutation$DeleteIssueComment$deleteIssueComment<TRes> {
  _CopyWithStubImpl$Mutation$DeleteIssueComment$deleteIssueComment(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    String? $__typename,
  }) =>
      _res;
}
