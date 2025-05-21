import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$AddComment {
  factory Variables$Mutation$AddComment({
    required String id,
    required String body,
  }) =>
      Variables$Mutation$AddComment._({
        r'id': id,
        r'body': body,
      });

  Variables$Mutation$AddComment._(this._$data);

  factory Variables$Mutation$AddComment.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$body = data['body'];
    result$data['body'] = (l$body as String);
    return Variables$Mutation$AddComment._(result$data);
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

  CopyWith$Variables$Mutation$AddComment<Variables$Mutation$AddComment>
      get copyWith => CopyWith$Variables$Mutation$AddComment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddComment ||
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

abstract class CopyWith$Variables$Mutation$AddComment<TRes> {
  factory CopyWith$Variables$Mutation$AddComment(
    Variables$Mutation$AddComment instance,
    TRes Function(Variables$Mutation$AddComment) then,
  ) = _CopyWithImpl$Variables$Mutation$AddComment;

  factory CopyWith$Variables$Mutation$AddComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddComment;

  TRes call({
    String? id,
    String? body,
  });
}

class _CopyWithImpl$Variables$Mutation$AddComment<TRes>
    implements CopyWith$Variables$Mutation$AddComment<TRes> {
  _CopyWithImpl$Variables$Mutation$AddComment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddComment _instance;

  final TRes Function(Variables$Mutation$AddComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? body = _undefined,
  }) =>
      _then(Variables$Mutation$AddComment._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (body != _undefined && body != null) 'body': (body as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AddComment<TRes>
    implements CopyWith$Variables$Mutation$AddComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddComment(this._res);

  TRes _res;

  call({
    String? id,
    String? body,
  }) =>
      _res;
}

class Mutation$AddComment {
  Mutation$AddComment({
    this.addComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddComment.fromJson(Map<String, dynamic> json) {
    final l$addComment = json['addComment'];
    final l$$__typename = json['__typename'];
    return Mutation$AddComment(
      addComment: l$addComment == null
          ? null
          : Mutation$AddComment$addComment.fromJson(
              (l$addComment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddComment$addComment? addComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addComment = addComment;
    _resultData['addComment'] = l$addComment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addComment = addComment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$addComment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddComment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addComment = addComment;
    final lOther$addComment = other.addComment;
    if (l$addComment != lOther$addComment) {
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

extension UtilityExtension$Mutation$AddComment on Mutation$AddComment {
  CopyWith$Mutation$AddComment<Mutation$AddComment> get copyWith =>
      CopyWith$Mutation$AddComment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddComment<TRes> {
  factory CopyWith$Mutation$AddComment(
    Mutation$AddComment instance,
    TRes Function(Mutation$AddComment) then,
  ) = _CopyWithImpl$Mutation$AddComment;

  factory CopyWith$Mutation$AddComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddComment;

  TRes call({
    Mutation$AddComment$addComment? addComment,
    String? $__typename,
  });
  CopyWith$Mutation$AddComment$addComment<TRes> get addComment;
}

class _CopyWithImpl$Mutation$AddComment<TRes>
    implements CopyWith$Mutation$AddComment<TRes> {
  _CopyWithImpl$Mutation$AddComment(
    this._instance,
    this._then,
  );

  final Mutation$AddComment _instance;

  final TRes Function(Mutation$AddComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addComment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddComment(
        addComment: addComment == _undefined
            ? _instance.addComment
            : (addComment as Mutation$AddComment$addComment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$AddComment$addComment<TRes> get addComment {
    final local$addComment = _instance.addComment;
    return local$addComment == null
        ? CopyWith$Mutation$AddComment$addComment.stub(_then(_instance))
        : CopyWith$Mutation$AddComment$addComment(
            local$addComment, (e) => call(addComment: e));
  }
}

class _CopyWithStubImpl$Mutation$AddComment<TRes>
    implements CopyWith$Mutation$AddComment<TRes> {
  _CopyWithStubImpl$Mutation$AddComment(this._res);

  TRes _res;

  call({
    Mutation$AddComment$addComment? addComment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$AddComment$addComment<TRes> get addComment =>
      CopyWith$Mutation$AddComment$addComment.stub(_res);
}

const documentNodeMutationAddComment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AddComment'),
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
        name: NameNode(value: 'addComment'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'subjectId'),
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
Mutation$AddComment _parserFn$Mutation$AddComment(Map<String, dynamic> data) =>
    Mutation$AddComment.fromJson(data);
typedef OnMutationCompleted$Mutation$AddComment = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$AddComment?,
);

class Options$Mutation$AddComment
    extends graphql.MutationOptions<Mutation$AddComment> {
  Options$Mutation$AddComment({
    String? operationName,
    required Variables$Mutation$AddComment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddComment>? update,
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
                    data == null ? null : _parserFn$Mutation$AddComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddComment,
          parserFn: _parserFn$Mutation$AddComment,
        );

  final OnMutationCompleted$Mutation$AddComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$AddComment
    extends graphql.WatchQueryOptions<Mutation$AddComment> {
  WatchOptions$Mutation$AddComment({
    String? operationName,
    required Variables$Mutation$AddComment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddComment? typedOptimisticResult,
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
          document: documentNodeMutationAddComment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$AddComment,
        );
}

extension ClientExtension$Mutation$AddComment on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddComment>> mutate$AddComment(
          Options$Mutation$AddComment options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$AddComment> watchMutation$AddComment(
          WatchOptions$Mutation$AddComment options) =>
      this.watchMutation(options);
}

class Mutation$AddComment$HookResult {
  Mutation$AddComment$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$AddComment runMutation;

  final graphql.QueryResult<Mutation$AddComment> result;
}

Mutation$AddComment$HookResult useMutation$AddComment(
    [WidgetOptions$Mutation$AddComment? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$AddComment());
  return Mutation$AddComment$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AddComment> useWatchMutation$AddComment(
        WatchOptions$Mutation$AddComment options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AddComment
    extends graphql.MutationOptions<Mutation$AddComment> {
  WidgetOptions$Mutation$AddComment({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddComment>? update,
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
                    data == null ? null : _parserFn$Mutation$AddComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddComment,
          parserFn: _parserFn$Mutation$AddComment,
        );

  final OnMutationCompleted$Mutation$AddComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$AddComment
    = graphql.MultiSourceResult<Mutation$AddComment> Function(
  Variables$Mutation$AddComment, {
  Object? optimisticResult,
  Mutation$AddComment? typedOptimisticResult,
});
typedef Builder$Mutation$AddComment = widgets.Widget Function(
  RunMutation$Mutation$AddComment,
  graphql.QueryResult<Mutation$AddComment>?,
);

class Mutation$AddComment$Widget
    extends graphql_flutter.Mutation<Mutation$AddComment> {
  Mutation$AddComment$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$AddComment? options,
    required Builder$Mutation$AddComment builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$AddComment(),
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

class Mutation$AddComment$addComment {
  Mutation$AddComment$addComment({
    this.clientMutationId,
    this.$__typename = 'AddCommentPayload',
  });

  factory Mutation$AddComment$addComment.fromJson(Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$$__typename = json['__typename'];
    return Mutation$AddComment$addComment(
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
    if (other is! Mutation$AddComment$addComment ||
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

extension UtilityExtension$Mutation$AddComment$addComment
    on Mutation$AddComment$addComment {
  CopyWith$Mutation$AddComment$addComment<Mutation$AddComment$addComment>
      get copyWith => CopyWith$Mutation$AddComment$addComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddComment$addComment<TRes> {
  factory CopyWith$Mutation$AddComment$addComment(
    Mutation$AddComment$addComment instance,
    TRes Function(Mutation$AddComment$addComment) then,
  ) = _CopyWithImpl$Mutation$AddComment$addComment;

  factory CopyWith$Mutation$AddComment$addComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddComment$addComment;

  TRes call({
    String? clientMutationId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddComment$addComment<TRes>
    implements CopyWith$Mutation$AddComment$addComment<TRes> {
  _CopyWithImpl$Mutation$AddComment$addComment(
    this._instance,
    this._then,
  );

  final Mutation$AddComment$addComment _instance;

  final TRes Function(Mutation$AddComment$addComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddComment$addComment(
        clientMutationId: clientMutationId == _undefined
            ? _instance.clientMutationId
            : (clientMutationId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AddComment$addComment<TRes>
    implements CopyWith$Mutation$AddComment$addComment<TRes> {
  _CopyWithStubImpl$Mutation$AddComment$addComment(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    String? $__typename,
  }) =>
      _res;
}
