// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changePassword.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GChangePasswordData> _$gChangePasswordDataSerializer =
    _$GChangePasswordDataSerializer();
Serializer<GChangePasswordData_changePassword>
_$gChangePasswordDataChangePasswordSerializer =
    _$GChangePasswordData_changePasswordSerializer();
Serializer<GChangePasswordData_changePassword_user>
_$gChangePasswordDataChangePasswordUserSerializer =
    _$GChangePasswordData_changePassword_userSerializer();

class _$GChangePasswordDataSerializer
    implements StructuredSerializer<GChangePasswordData> {
  @override
  final Iterable<Type> types = const [
    GChangePasswordData,
    _$GChangePasswordData,
  ];
  @override
  final String wireName = 'GChangePasswordData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangePasswordData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'changePassword',
      serializers.serialize(
        object.changePassword,
        specifiedType: const FullType(GChangePasswordData_changePassword),
      ),
    ];

    return result;
  }

  @override
  GChangePasswordData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangePasswordDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'changePassword':
          result.changePassword.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GChangePasswordData_changePassword,
                  ),
                )!
                as GChangePasswordData_changePassword,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangePasswordData_changePasswordSerializer
    implements StructuredSerializer<GChangePasswordData_changePassword> {
  @override
  final Iterable<Type> types = const [
    GChangePasswordData_changePassword,
    _$GChangePasswordData_changePassword,
  ];
  @override
  final String wireName = 'GChangePasswordData_changePassword';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangePasswordData_changePassword object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GChangePasswordData_changePassword_user,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GChangePasswordData_changePassword deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangePasswordData_changePasswordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'status':
          result.status =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
        case 'message':
          result.message =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'user':
          result.user.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GChangePasswordData_changePassword_user,
                  ),
                )!
                as GChangePasswordData_changePassword_user,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangePasswordData_changePassword_userSerializer
    implements StructuredSerializer<GChangePasswordData_changePassword_user> {
  @override
  final Iterable<Type> types = const [
    GChangePasswordData_changePassword_user,
    _$GChangePasswordData_changePassword_user,
  ];
  @override
  final String wireName = 'GChangePasswordData_changePassword_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangePasswordData_changePassword_user object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      ),
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
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
  GChangePasswordData_changePassword_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangePasswordData_changePassword_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
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

class _$GChangePasswordData extends GChangePasswordData {
  @override
  final String G__typename;
  @override
  final GChangePasswordData_changePassword changePassword;

  factory _$GChangePasswordData([
    void Function(GChangePasswordDataBuilder)? updates,
  ]) => (GChangePasswordDataBuilder()..update(updates))._build();

  _$GChangePasswordData._({
    required this.G__typename,
    required this.changePassword,
  }) : super._();
  @override
  GChangePasswordData rebuild(
    void Function(GChangePasswordDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangePasswordDataBuilder toBuilder() =>
      GChangePasswordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangePasswordData &&
        G__typename == other.G__typename &&
        changePassword == other.changePassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, changePassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangePasswordData')
          ..add('G__typename', G__typename)
          ..add('changePassword', changePassword))
        .toString();
  }
}

class GChangePasswordDataBuilder
    implements Builder<GChangePasswordData, GChangePasswordDataBuilder> {
  _$GChangePasswordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GChangePasswordData_changePasswordBuilder? _changePassword;
  GChangePasswordData_changePasswordBuilder get changePassword =>
      _$this._changePassword ??= GChangePasswordData_changePasswordBuilder();
  set changePassword(
    GChangePasswordData_changePasswordBuilder? changePassword,
  ) => _$this._changePassword = changePassword;

  GChangePasswordDataBuilder() {
    GChangePasswordData._initializeBuilder(this);
  }

  GChangePasswordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _changePassword = $v.changePassword.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangePasswordData other) {
    _$v = other as _$GChangePasswordData;
  }

  @override
  void update(void Function(GChangePasswordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangePasswordData build() => _build();

  _$GChangePasswordData _build() {
    _$GChangePasswordData _$result;
    try {
      _$result =
          _$v ??
          _$GChangePasswordData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangePasswordData',
              'G__typename',
            ),
            changePassword: changePassword.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'changePassword';
        changePassword.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangePasswordData',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChangePasswordData_changePassword
    extends GChangePasswordData_changePassword {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final GChangePasswordData_changePassword_user? user;

  factory _$GChangePasswordData_changePassword([
    void Function(GChangePasswordData_changePasswordBuilder)? updates,
  ]) => (GChangePasswordData_changePasswordBuilder()..update(updates))._build();

  _$GChangePasswordData_changePassword._({
    required this.G__typename,
    required this.status,
    required this.message,
    this.user,
  }) : super._();
  @override
  GChangePasswordData_changePassword rebuild(
    void Function(GChangePasswordData_changePasswordBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangePasswordData_changePasswordBuilder toBuilder() =>
      GChangePasswordData_changePasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangePasswordData_changePassword &&
        G__typename == other.G__typename &&
        status == other.status &&
        message == other.message &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangePasswordData_changePassword')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class GChangePasswordData_changePasswordBuilder
    implements
        Builder<
          GChangePasswordData_changePassword,
          GChangePasswordData_changePasswordBuilder
        > {
  _$GChangePasswordData_changePassword? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GChangePasswordData_changePassword_userBuilder? _user;
  GChangePasswordData_changePassword_userBuilder get user =>
      _$this._user ??= GChangePasswordData_changePassword_userBuilder();
  set user(GChangePasswordData_changePassword_userBuilder? user) =>
      _$this._user = user;

  GChangePasswordData_changePasswordBuilder() {
    GChangePasswordData_changePassword._initializeBuilder(this);
  }

  GChangePasswordData_changePasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _message = $v.message;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangePasswordData_changePassword other) {
    _$v = other as _$GChangePasswordData_changePassword;
  }

  @override
  void update(
    void Function(GChangePasswordData_changePasswordBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangePasswordData_changePassword build() => _build();

  _$GChangePasswordData_changePassword _build() {
    _$GChangePasswordData_changePassword _$result;
    try {
      _$result =
          _$v ??
          _$GChangePasswordData_changePassword._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangePasswordData_changePassword',
              'G__typename',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GChangePasswordData_changePassword',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GChangePasswordData_changePassword',
              'message',
            ),
            user: _user?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangePasswordData_changePassword',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChangePasswordData_changePassword_user
    extends GChangePasswordData_changePassword_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? childname;
  @override
  final int? childage;
  @override
  final String auth;

  factory _$GChangePasswordData_changePassword_user([
    void Function(GChangePasswordData_changePassword_userBuilder)? updates,
  ]) => (GChangePasswordData_changePassword_userBuilder()..update(updates))
      ._build();

  _$GChangePasswordData_changePassword_user._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.email,
    this.childname,
    this.childage,
    required this.auth,
  }) : super._();
  @override
  GChangePasswordData_changePassword_user rebuild(
    void Function(GChangePasswordData_changePassword_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangePasswordData_changePassword_userBuilder toBuilder() =>
      GChangePasswordData_changePassword_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangePasswordData_changePassword_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        childname == other.childname &&
        childage == other.childage &&
        auth == other.auth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, childname.hashCode);
    _$hash = $jc(_$hash, childage.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChangePasswordData_changePassword_user',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('childname', childname)
          ..add('childage', childage)
          ..add('auth', auth))
        .toString();
  }
}

class GChangePasswordData_changePassword_userBuilder
    implements
        Builder<
          GChangePasswordData_changePassword_user,
          GChangePasswordData_changePassword_userBuilder
        > {
  _$GChangePasswordData_changePassword_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _childname;
  String? get childname => _$this._childname;
  set childname(String? childname) => _$this._childname = childname;

  int? _childage;
  int? get childage => _$this._childage;
  set childage(int? childage) => _$this._childage = childage;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  GChangePasswordData_changePassword_userBuilder() {
    GChangePasswordData_changePassword_user._initializeBuilder(this);
  }

  GChangePasswordData_changePassword_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _childname = $v.childname;
      _childage = $v.childage;
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangePasswordData_changePassword_user other) {
    _$v = other as _$GChangePasswordData_changePassword_user;
  }

  @override
  void update(
    void Function(GChangePasswordData_changePassword_userBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangePasswordData_changePassword_user build() => _build();

  _$GChangePasswordData_changePassword_user _build() {
    final _$result =
        _$v ??
        _$GChangePasswordData_changePassword_user._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GChangePasswordData_changePassword_user',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GChangePasswordData_changePassword_user',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GChangePasswordData_changePassword_user',
            'name',
          ),
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'GChangePasswordData_changePassword_user',
            'email',
          ),
          childname: childname,
          childage: childage,
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GChangePasswordData_changePassword_user',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
