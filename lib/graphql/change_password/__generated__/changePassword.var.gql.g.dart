// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changePassword.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GChangePasswordVars> _$gChangePasswordVarsSerializer =
    _$GChangePasswordVarsSerializer();

class _$GChangePasswordVarsSerializer
    implements StructuredSerializer<GChangePasswordVars> {
  @override
  final Iterable<Type> types = const [
    GChangePasswordVars,
    _$GChangePasswordVars,
  ];
  @override
  final String wireName = 'GChangePasswordVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangePasswordVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
      'oldPassword',
      serializers.serialize(
        object.oldPassword,
        specifiedType: const FullType(String),
      ),
      'newPassword',
      serializers.serialize(
        object.newPassword,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangePasswordVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangePasswordVarsBuilder();

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
        case 'oldPassword':
          result.oldPassword =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'newPassword':
          result.newPassword =
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

class _$GChangePasswordVars extends GChangePasswordVars {
  @override
  final String auth;
  @override
  final String oldPassword;
  @override
  final String newPassword;

  factory _$GChangePasswordVars([
    void Function(GChangePasswordVarsBuilder)? updates,
  ]) => (GChangePasswordVarsBuilder()..update(updates))._build();

  _$GChangePasswordVars._({
    required this.auth,
    required this.oldPassword,
    required this.newPassword,
  }) : super._();
  @override
  GChangePasswordVars rebuild(
    void Function(GChangePasswordVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangePasswordVarsBuilder toBuilder() =>
      GChangePasswordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangePasswordVars &&
        auth == other.auth &&
        oldPassword == other.oldPassword &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, oldPassword.hashCode);
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangePasswordVars')
          ..add('auth', auth)
          ..add('oldPassword', oldPassword)
          ..add('newPassword', newPassword))
        .toString();
  }
}

class GChangePasswordVarsBuilder
    implements Builder<GChangePasswordVars, GChangePasswordVarsBuilder> {
  _$GChangePasswordVars? _$v;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  String? _oldPassword;
  String? get oldPassword => _$this._oldPassword;
  set oldPassword(String? oldPassword) => _$this._oldPassword = oldPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  GChangePasswordVarsBuilder();

  GChangePasswordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth;
      _oldPassword = $v.oldPassword;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangePasswordVars other) {
    _$v = other as _$GChangePasswordVars;
  }

  @override
  void update(void Function(GChangePasswordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangePasswordVars build() => _build();

  _$GChangePasswordVars _build() {
    final _$result =
        _$v ??
        _$GChangePasswordVars._(
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GChangePasswordVars',
            'auth',
          ),
          oldPassword: BuiltValueNullFieldError.checkNotNull(
            oldPassword,
            r'GChangePasswordVars',
            'oldPassword',
          ),
          newPassword: BuiltValueNullFieldError.checkNotNull(
            newPassword,
            r'GChangePasswordVars',
            'newPassword',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
