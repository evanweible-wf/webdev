// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.9

part of 'connect_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConnectRequest> _$connectRequestSerializer =
    new _$ConnectRequestSerializer();

class _$ConnectRequestSerializer
    implements StructuredSerializer<ConnectRequest> {
  @override
  final Iterable<Type> types = const [ConnectRequest, _$ConnectRequest];
  @override
  final String wireName = 'ConnectRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, ConnectRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'appId',
      serializers.serialize(object.appId,
          specifiedType: const FullType(String)),
      'instanceId',
      serializers.serialize(object.instanceId,
          specifiedType: const FullType(String)),
      'entrypointPaths',
      serializers.serialize(object.entrypointPaths,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  ConnectRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConnectRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'appId':
          result.appId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instanceId':
          result.instanceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'entrypointPaths':
          result.entrypointPaths.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ConnectRequest extends ConnectRequest {
  @override
  final String appId;
  @override
  final String instanceId;
  @override
  final BuiltList<String> entrypointPaths;

  factory _$ConnectRequest([void Function(ConnectRequestBuilder) updates]) =>
      (new ConnectRequestBuilder()..update(updates)).build();

  _$ConnectRequest._({this.appId, this.instanceId, this.entrypointPaths})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(appId, 'ConnectRequest', 'appId');
    BuiltValueNullFieldError.checkNotNull(
        instanceId, 'ConnectRequest', 'instanceId');
    BuiltValueNullFieldError.checkNotNull(
        entrypointPaths, 'ConnectRequest', 'entrypointPaths');
  }

  @override
  ConnectRequest rebuild(void Function(ConnectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConnectRequestBuilder toBuilder() =>
      new ConnectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConnectRequest &&
        appId == other.appId &&
        instanceId == other.instanceId &&
        entrypointPaths == other.entrypointPaths;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, appId.hashCode), instanceId.hashCode),
        entrypointPaths.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConnectRequest')
          ..add('appId', appId)
          ..add('instanceId', instanceId)
          ..add('entrypointPaths', entrypointPaths))
        .toString();
  }
}

class ConnectRequestBuilder
    implements Builder<ConnectRequest, ConnectRequestBuilder> {
  _$ConnectRequest _$v;

  String _appId;
  String get appId => _$this._appId;
  set appId(String appId) => _$this._appId = appId;

  String _instanceId;
  String get instanceId => _$this._instanceId;
  set instanceId(String instanceId) => _$this._instanceId = instanceId;

  ListBuilder<String> _entrypointPaths;
  ListBuilder<String> get entrypointPaths =>
      _$this._entrypointPaths ??= new ListBuilder<String>();
  set entrypointPaths(ListBuilder<String> entrypointPaths) =>
      _$this._entrypointPaths = entrypointPaths;

  ConnectRequestBuilder();

  ConnectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appId = $v.appId;
      _instanceId = $v.instanceId;
      _entrypointPaths = $v.entrypointPaths.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConnectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConnectRequest;
  }

  @override
  void update(void Function(ConnectRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConnectRequest build() {
    _$ConnectRequest _$result;
    try {
      _$result = _$v ??
          new _$ConnectRequest._(
              appId: BuiltValueNullFieldError.checkNotNull(
                  appId, 'ConnectRequest', 'appId'),
              instanceId: BuiltValueNullFieldError.checkNotNull(
                  instanceId, 'ConnectRequest', 'instanceId'),
              entrypointPaths: entrypointPaths.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'entrypointPaths';
        entrypointPaths.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConnectRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
