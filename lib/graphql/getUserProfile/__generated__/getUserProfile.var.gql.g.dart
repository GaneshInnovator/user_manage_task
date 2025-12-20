// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getUserProfile.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserByTokenVars> _$gGetUserByTokenVarsSerializer =
    _$GGetUserByTokenVarsSerializer();

class _$GGetUserByTokenVarsSerializer
    implements StructuredSerializer<GGetUserByTokenVars> {
  @override
  final Iterable<Type> types = const [
    GGetUserByTokenVars,
    _$GGetUserByTokenVars,
  ];
  @override
  final String wireName = 'GGetUserByTokenVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetUserByTokenVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetUserByTokenVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetUserByTokenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'auth':
          result.auth =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserByTokenVars extends GGetUserByTokenVars {
  @override
  final String auth;

  factory _$GGetUserByTokenVars([
    void Function(GGetUserByTokenVarsBuilder)? updates,
  ]) => (GGetUserByTokenVarsBuilder()..update(updates))._build();

  _$GGetUserByTokenVars._({required this.auth}) : super._();
  @override
  GGetUserByTokenVars rebuild(
    void Function(GGetUserByTokenVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetUserByTokenVarsBuilder toBuilder() =>
      GGetUserByTokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserByTokenVars && auth == other.auth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GGetUserByTokenVars',
    )..add('auth', auth)).toString();
  }
}

class GGetUserByTokenVarsBuilder
    implements Builder<GGetUserByTokenVars, GGetUserByTokenVarsBuilder> {
  _$GGetUserByTokenVars? _$v;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  GGetUserByTokenVarsBuilder();

  GGetUserByTokenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserByTokenVars other) {
    _$v = other as _$GGetUserByTokenVars;
  }

  @override
  void update(void Function(GGetUserByTokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserByTokenVars build() => _build();

  _$GGetUserByTokenVars _build() {
    final _$result =
        _$v ??
        _$GGetUserByTokenVars._(
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GGetUserByTokenVars',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
