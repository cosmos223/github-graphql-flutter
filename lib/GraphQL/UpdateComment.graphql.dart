import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UpdateIssueComment {
  factory Variables$Mutation$UpdateIssueComment({
    required String id,
    required String body,
  }) =>
      Variables$Mutation$UpdateIssueComment._({
        r'id': id,
        r'body': body,
      });

  Variables$Mutation$UpdateIssueComment._(this._$data);

  factory Variables$Mutation$UpdateIssueComment.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$body = data['body'];
    result$data['body'] = (l$body as String);
    return Variables$Mutation$UpdateIssueComment._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get body => (_$data['body'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$body = body;
    result$data['body'] = l$body;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateIssueComment<
          Variables$Mutation$UpdateIssueComment>
      get copyWith => CopyWith$Variables$Mutation$UpdateIssueComment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateIssueComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$body = body;
    return Object.hashAll([
      l$id,
      l$body,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateIssueComment<TRes> {
  factory CopyWith$Variables$Mutation$UpdateIssueComment(
    Variables$Mutation$UpdateIssueComment instance,
    TRes Function(Variables$Mutation$UpdateIssueComment) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateIssueComment;

  factory CopyWith$Variables$Mutation$UpdateIssueComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateIssueComment;

  TRes call({
    String? id,
    String? body,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateIssueComment<TRes>
    implements CopyWith$Variables$Mutation$UpdateIssueComment<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateIssueComment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateIssueComment _instance;

  final TRes Function(Variables$Mutation$UpdateIssueComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? body = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateIssueComment._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (body != _undefined && body != null) 'body': (body as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateIssueComment<TRes>
    implements CopyWith$Variables$Mutation$UpdateIssueComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateIssueComment(this._res);

  TRes _res;

  call({
    String? id,
    String? body,
  }) =>
      _res;
}

class Mutation$UpdateIssueComment {
  Mutation$UpdateIssueComment({
    this.updateIssueComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateIssueComment.fromJson(Map<String, dynamic> json) {
    final l$updateIssueComment = json['updateIssueComment'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateIssueComment(
      updateIssueComment: l$updateIssueComment == null
          ? null
          : Mutation$UpdateIssueComment$updateIssueComment.fromJson(
              (l$updateIssueComment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateIssueComment$updateIssueComment? updateIssueComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateIssueComment = updateIssueComment;
    _resultData['updateIssueComment'] = l$updateIssueComment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateIssueComment = updateIssueComment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateIssueComment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateIssueComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateIssueComment = updateIssueComment;
    final lOther$updateIssueComment = other.updateIssueComment;
    if (l$updateIssueComment != lOther$updateIssueComment) {
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

extension UtilityExtension$Mutation$UpdateIssueComment
    on Mutation$UpdateIssueComment {
  CopyWith$Mutation$UpdateIssueComment<Mutation$UpdateIssueComment>
      get copyWith => CopyWith$Mutation$UpdateIssueComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateIssueComment<TRes> {
  factory CopyWith$Mutation$UpdateIssueComment(
    Mutation$UpdateIssueComment instance,
    TRes Function(Mutation$UpdateIssueComment) then,
  ) = _CopyWithImpl$Mutation$UpdateIssueComment;

  factory CopyWith$Mutation$UpdateIssueComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateIssueComment;

  TRes call({
    Mutation$UpdateIssueComment$updateIssueComment? updateIssueComment,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateIssueComment$updateIssueComment<TRes>
      get updateIssueComment;
}

class _CopyWithImpl$Mutation$UpdateIssueComment<TRes>
    implements CopyWith$Mutation$UpdateIssueComment<TRes> {
  _CopyWithImpl$Mutation$UpdateIssueComment(
    this._instance,
    this._then,
  );

  final Mutation$UpdateIssueComment _instance;

  final TRes Function(Mutation$UpdateIssueComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateIssueComment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateIssueComment(
        updateIssueComment: updateIssueComment == _undefined
            ? _instance.updateIssueComment
            : (updateIssueComment
                as Mutation$UpdateIssueComment$updateIssueComment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateIssueComment$updateIssueComment<TRes>
      get updateIssueComment {
    final local$updateIssueComment = _instance.updateIssueComment;
    return local$updateIssueComment == null
        ? CopyWith$Mutation$UpdateIssueComment$updateIssueComment.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateIssueComment$updateIssueComment(
            local$updateIssueComment, (e) => call(updateIssueComment: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateIssueComment<TRes>
    implements CopyWith$Mutation$UpdateIssueComment<TRes> {
  _CopyWithStubImpl$Mutation$UpdateIssueComment(this._res);

  TRes _res;

  call({
    Mutation$UpdateIssueComment$updateIssueComment? updateIssueComment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateIssueComment$updateIssueComment<TRes>
      get updateIssueComment =>
          CopyWith$Mutation$UpdateIssueComment$updateIssueComment.stub(_res);
}

const documentNodeMutationUpdateIssueComment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateIssueComment'),
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
        variable: VariableNode(name: NameNode(value: 'body')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateIssueComment'),
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
Mutation$UpdateIssueComment _parserFn$Mutation$UpdateIssueComment(
        Map<String, dynamic> data) =>
    Mutation$UpdateIssueComment.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateIssueComment = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateIssueComment?,
);

class Options$Mutation$UpdateIssueComment
    extends graphql.MutationOptions<Mutation$UpdateIssueComment> {
  Options$Mutation$UpdateIssueComment({
    String? operationName,
    required Variables$Mutation$UpdateIssueComment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateIssueComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateIssueComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateIssueComment>? update,
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
                        : _parserFn$Mutation$UpdateIssueComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateIssueComment,
          parserFn: _parserFn$Mutation$UpdateIssueComment,
        );

  final OnMutationCompleted$Mutation$UpdateIssueComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateIssueComment
    extends graphql.WatchQueryOptions<Mutation$UpdateIssueComment> {
  WatchOptions$Mutation$UpdateIssueComment({
    String? operationName,
    required Variables$Mutation$UpdateIssueComment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateIssueComment? typedOptimisticResult,
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
          document: documentNodeMutationUpdateIssueComment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateIssueComment,
        );
}

extension ClientExtension$Mutation$UpdateIssueComment on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateIssueComment>>
      mutate$UpdateIssueComment(
              Options$Mutation$UpdateIssueComment options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateIssueComment>
      watchMutation$UpdateIssueComment(
              WatchOptions$Mutation$UpdateIssueComment options) =>
          this.watchMutation(options);
}

class Mutation$UpdateIssueComment$HookResult {
  Mutation$UpdateIssueComment$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateIssueComment runMutation;

  final graphql.QueryResult<Mutation$UpdateIssueComment> result;
}

Mutation$UpdateIssueComment$HookResult useMutation$UpdateIssueComment(
    [WidgetOptions$Mutation$UpdateIssueComment? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateIssueComment());
  return Mutation$UpdateIssueComment$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateIssueComment>
    useWatchMutation$UpdateIssueComment(
            WatchOptions$Mutation$UpdateIssueComment options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateIssueComment
    extends graphql.MutationOptions<Mutation$UpdateIssueComment> {
  WidgetOptions$Mutation$UpdateIssueComment({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateIssueComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateIssueComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateIssueComment>? update,
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
                        : _parserFn$Mutation$UpdateIssueComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateIssueComment,
          parserFn: _parserFn$Mutation$UpdateIssueComment,
        );

  final OnMutationCompleted$Mutation$UpdateIssueComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateIssueComment
    = graphql.MultiSourceResult<Mutation$UpdateIssueComment> Function(
  Variables$Mutation$UpdateIssueComment, {
  Object? optimisticResult,
  Mutation$UpdateIssueComment? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateIssueComment = widgets.Widget Function(
  RunMutation$Mutation$UpdateIssueComment,
  graphql.QueryResult<Mutation$UpdateIssueComment>?,
);

class Mutation$UpdateIssueComment$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateIssueComment> {
  Mutation$UpdateIssueComment$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateIssueComment? options,
    required Builder$Mutation$UpdateIssueComment builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateIssueComment(),
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

class Mutation$UpdateIssueComment$updateIssueComment {
  Mutation$UpdateIssueComment$updateIssueComment({
    this.clientMutationId,
    this.$__typename = 'UpdateIssueCommentPayload',
  });

  factory Mutation$UpdateIssueComment$updateIssueComment.fromJson(
      Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateIssueComment$updateIssueComment(
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
    if (other is! Mutation$UpdateIssueComment$updateIssueComment ||
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

extension UtilityExtension$Mutation$UpdateIssueComment$updateIssueComment
    on Mutation$UpdateIssueComment$updateIssueComment {
  CopyWith$Mutation$UpdateIssueComment$updateIssueComment<
          Mutation$UpdateIssueComment$updateIssueComment>
      get copyWith => CopyWith$Mutation$UpdateIssueComment$updateIssueComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateIssueComment$updateIssueComment<TRes> {
  factory CopyWith$Mutation$UpdateIssueComment$updateIssueComment(
    Mutation$UpdateIssueComment$updateIssueComment instance,
    TRes Function(Mutation$UpdateIssueComment$updateIssueComment) then,
  ) = _CopyWithImpl$Mutation$UpdateIssueComment$updateIssueComment;

  factory CopyWith$Mutation$UpdateIssueComment$updateIssueComment.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateIssueComment$updateIssueComment;

  TRes call({
    String? clientMutationId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateIssueComment$updateIssueComment<TRes>
    implements CopyWith$Mutation$UpdateIssueComment$updateIssueComment<TRes> {
  _CopyWithImpl$Mutation$UpdateIssueComment$updateIssueComment(
    this._instance,
    this._then,
  );

  final Mutation$UpdateIssueComment$updateIssueComment _instance;

  final TRes Function(Mutation$UpdateIssueComment$updateIssueComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateIssueComment$updateIssueComment(
        clientMutationId: clientMutationId == _undefined
            ? _instance.clientMutationId
            : (clientMutationId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateIssueComment$updateIssueComment<TRes>
    implements CopyWith$Mutation$UpdateIssueComment$updateIssueComment<TRes> {
  _CopyWithStubImpl$Mutation$UpdateIssueComment$updateIssueComment(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    String? $__typename,
  }) =>
      _res;
}
