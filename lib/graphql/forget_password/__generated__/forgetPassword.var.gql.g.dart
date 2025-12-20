// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgetPassword.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GForgetPasswordVars> _$gForgetPasswordVarsSerializer =
    _$GForgetPasswordVarsSerializer();

class _$GForgetPasswordVarsSerializer
    implements StructuredSerializer<GForgetPasswordVars> {
  @override
  final Iterable<Type> types = const [
    GForgetPasswordVars,
    _$GForgetPasswordVars,
  ];
  @override
  final String wireName = 'GForgetPasswordVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GForgetPasswordVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'email',
      serializers.serialize(
        object.email,
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
  GForgetPasswordVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GForgetPasswordVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email =
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

class _$GForgetPasswordVars extends GForgetPasswordVars {
  @override
  final String email;
  @override
  final String newPassword;

  factory _$GForgetPasswordVars([
    void Function(GForgetPasswordVarsBuilder)? updates,
  ]) => (GForgetPasswordVarsBuilder()..update(updates))._build();

  _$GForgetPasswordVars._({required this.email, required this.newPassword})
    : super._();
  @override
  GForgetPasswordVars rebuild(
    void Function(GForgetPasswordVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GForgetPasswordVarsBuilder toBuilder() =>
      GForgetPasswordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForgetPasswordVars &&
        email == other.email &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForgetPasswordVars')
          ..add('email', email)
          ..add('newPassword', newPassword))
        .toString();
  }
}

class GForgetPasswordVarsBuilder
    implements Builder<GForgetPasswordVars, GForgetPasswordVarsBuilder> {
  _$GForgetPasswordVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  GForgetPasswordVarsBuilder();

  GForgetPasswordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForgetPasswordVars other) {
    _$v = other as _$GForgetPasswordVars;
  }

  @override
  void update(void Function(GForgetPasswordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForgetPasswordVars build() => _build();

  _$GForgetPasswordVars _build() {
    final _$result =
        _$v ??
        _$GForgetPasswordVars._(
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'GForgetPasswordVars',
            'email',
          ),
          newPassword: BuiltValueNullFieldError.checkNotNull(
            newPassword,
            r'GForgetPasswordVars',
            'newPassword',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
