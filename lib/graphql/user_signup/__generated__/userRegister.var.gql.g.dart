// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userRegister.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRegisterUserVars> _$gRegisterUserVarsSerializer =
    _$GRegisterUserVarsSerializer();

class _$GRegisterUserVarsSerializer
    implements StructuredSerializer<GRegisterUserVars> {
  @override
  final Iterable<Type> types = const [GRegisterUserVars, _$GRegisterUserVars];
  @override
  final String wireName = 'GRegisterUserVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GRegisterUserVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      ),
      'password',
      serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.childname;
    if (value != null) {
      result
        ..add('childname')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.childage;
    if (value != null) {
      result
        ..add('childage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GRegisterUserVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GRegisterUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'email':
          result.email =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'password':
          result.password =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'childname':
          result.childname =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'childage':
          result.childage =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRegisterUserVars extends GRegisterUserVars {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String? childname;
  @override
  final int? childage;

  factory _$GRegisterUserVars([
    void Function(GRegisterUserVarsBuilder)? updates,
  ]) => (GRegisterUserVarsBuilder()..update(updates))._build();

  _$GRegisterUserVars._({
    required this.name,
    required this.email,
    required this.password,
    this.childname,
    this.childage,
  }) : super._();
  @override
  GRegisterUserVars rebuild(void Function(GRegisterUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegisterUserVarsBuilder toBuilder() =>
      GRegisterUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegisterUserVars &&
        name == other.name &&
        email == other.email &&
        password == other.password &&
        childname == other.childname &&
        childage == other.childage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, childname.hashCode);
    _$hash = $jc(_$hash, childage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRegisterUserVars')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password)
          ..add('childname', childname)
          ..add('childage', childage))
        .toString();
  }
}

class GRegisterUserVarsBuilder
    implements Builder<GRegisterUserVars, GRegisterUserVarsBuilder> {
  _$GRegisterUserVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _childname;
  String? get childname => _$this._childname;
  set childname(String? childname) => _$this._childname = childname;

  int? _childage;
  int? get childage => _$this._childage;
  set childage(int? childage) => _$this._childage = childage;

  GRegisterUserVarsBuilder();

  GRegisterUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _password = $v.password;
      _childname = $v.childname;
      _childage = $v.childage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegisterUserVars other) {
    _$v = other as _$GRegisterUserVars;
  }

  @override
  void update(void Function(GRegisterUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRegisterUserVars build() => _build();

  _$GRegisterUserVars _build() {
    final _$result =
        _$v ??
        _$GRegisterUserVars._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GRegisterUserVars',
            'name',
          ),
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'GRegisterUserVars',
            'email',
          ),
          password: BuiltValueNullFieldError.checkNotNull(
            password,
            r'GRegisterUserVars',
            'password',
          ),
          childname: childname,
          childage: childage,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
