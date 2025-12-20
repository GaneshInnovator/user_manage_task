// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userRegister.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRegisterUserData> _$gRegisterUserDataSerializer =
    _$GRegisterUserDataSerializer();
Serializer<GRegisterUserData_registerUser>
_$gRegisterUserDataRegisterUserSerializer =
    _$GRegisterUserData_registerUserSerializer();
Serializer<GRegisterUserData_registerUser_user>
_$gRegisterUserDataRegisterUserUserSerializer =
    _$GRegisterUserData_registerUser_userSerializer();

class _$GRegisterUserDataSerializer
    implements StructuredSerializer<GRegisterUserData> {
  @override
  final Iterable<Type> types = const [GRegisterUserData, _$GRegisterUserData];
  @override
  final String wireName = 'GRegisterUserData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GRegisterUserData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'registerUser',
      serializers.serialize(
        object.registerUser,
        specifiedType: const FullType(GRegisterUserData_registerUser),
      ),
    ];

    return result;
  }

  @override
  GRegisterUserData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GRegisterUserDataBuilder();

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
        case 'registerUser':
          result.registerUser.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GRegisterUserData_registerUser),
                )!
                as GRegisterUserData_registerUser,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GRegisterUserData_registerUserSerializer
    implements StructuredSerializer<GRegisterUserData_registerUser> {
  @override
  final Iterable<Type> types = const [
    GRegisterUserData_registerUser,
    _$GRegisterUserData_registerUser,
  ];
  @override
  final String wireName = 'GRegisterUserData_registerUser';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GRegisterUserData_registerUser object, {
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
            specifiedType: const FullType(GRegisterUserData_registerUser_user),
          ),
        );
    }
    return result;
  }

  @override
  GRegisterUserData_registerUser deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GRegisterUserData_registerUserBuilder();

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
                    GRegisterUserData_registerUser_user,
                  ),
                )!
                as GRegisterUserData_registerUser_user,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GRegisterUserData_registerUser_userSerializer
    implements StructuredSerializer<GRegisterUserData_registerUser_user> {
  @override
  final Iterable<Type> types = const [
    GRegisterUserData_registerUser_user,
    _$GRegisterUserData_registerUser_user,
  ];
  @override
  final String wireName = 'GRegisterUserData_registerUser_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GRegisterUserData_registerUser_user object, {
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
      'password',
      serializers.serialize(
        object.password,
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
  GRegisterUserData_registerUser_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GRegisterUserData_registerUser_userBuilder();

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

class _$GRegisterUserData extends GRegisterUserData {
  @override
  final String G__typename;
  @override
  final GRegisterUserData_registerUser registerUser;

  factory _$GRegisterUserData([
    void Function(GRegisterUserDataBuilder)? updates,
  ]) => (GRegisterUserDataBuilder()..update(updates))._build();

  _$GRegisterUserData._({required this.G__typename, required this.registerUser})
    : super._();
  @override
  GRegisterUserData rebuild(void Function(GRegisterUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegisterUserDataBuilder toBuilder() =>
      GRegisterUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegisterUserData &&
        G__typename == other.G__typename &&
        registerUser == other.registerUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, registerUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRegisterUserData')
          ..add('G__typename', G__typename)
          ..add('registerUser', registerUser))
        .toString();
  }
}

class GRegisterUserDataBuilder
    implements Builder<GRegisterUserData, GRegisterUserDataBuilder> {
  _$GRegisterUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRegisterUserData_registerUserBuilder? _registerUser;
  GRegisterUserData_registerUserBuilder get registerUser =>
      _$this._registerUser ??= GRegisterUserData_registerUserBuilder();
  set registerUser(GRegisterUserData_registerUserBuilder? registerUser) =>
      _$this._registerUser = registerUser;

  GRegisterUserDataBuilder() {
    GRegisterUserData._initializeBuilder(this);
  }

  GRegisterUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _registerUser = $v.registerUser.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegisterUserData other) {
    _$v = other as _$GRegisterUserData;
  }

  @override
  void update(void Function(GRegisterUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRegisterUserData build() => _build();

  _$GRegisterUserData _build() {
    _$GRegisterUserData _$result;
    try {
      _$result =
          _$v ??
          _$GRegisterUserData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GRegisterUserData',
              'G__typename',
            ),
            registerUser: registerUser.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'registerUser';
        registerUser.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GRegisterUserData',
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

class _$GRegisterUserData_registerUser extends GRegisterUserData_registerUser {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final GRegisterUserData_registerUser_user? user;

  factory _$GRegisterUserData_registerUser([
    void Function(GRegisterUserData_registerUserBuilder)? updates,
  ]) => (GRegisterUserData_registerUserBuilder()..update(updates))._build();

  _$GRegisterUserData_registerUser._({
    required this.G__typename,
    required this.status,
    required this.message,
    this.user,
  }) : super._();
  @override
  GRegisterUserData_registerUser rebuild(
    void Function(GRegisterUserData_registerUserBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GRegisterUserData_registerUserBuilder toBuilder() =>
      GRegisterUserData_registerUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegisterUserData_registerUser &&
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
    return (newBuiltValueToStringHelper(r'GRegisterUserData_registerUser')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class GRegisterUserData_registerUserBuilder
    implements
        Builder<
          GRegisterUserData_registerUser,
          GRegisterUserData_registerUserBuilder
        > {
  _$GRegisterUserData_registerUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GRegisterUserData_registerUser_userBuilder? _user;
  GRegisterUserData_registerUser_userBuilder get user =>
      _$this._user ??= GRegisterUserData_registerUser_userBuilder();
  set user(GRegisterUserData_registerUser_userBuilder? user) =>
      _$this._user = user;

  GRegisterUserData_registerUserBuilder() {
    GRegisterUserData_registerUser._initializeBuilder(this);
  }

  GRegisterUserData_registerUserBuilder get _$this {
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
  void replace(GRegisterUserData_registerUser other) {
    _$v = other as _$GRegisterUserData_registerUser;
  }

  @override
  void update(void Function(GRegisterUserData_registerUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRegisterUserData_registerUser build() => _build();

  _$GRegisterUserData_registerUser _build() {
    _$GRegisterUserData_registerUser _$result;
    try {
      _$result =
          _$v ??
          _$GRegisterUserData_registerUser._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GRegisterUserData_registerUser',
              'G__typename',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GRegisterUserData_registerUser',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GRegisterUserData_registerUser',
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
          r'GRegisterUserData_registerUser',
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

class _$GRegisterUserData_registerUser_user
    extends GRegisterUserData_registerUser_user {
  @override
  final String G__typename;
  @override
  final String id;
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
  @override
  final String auth;

  factory _$GRegisterUserData_registerUser_user([
    void Function(GRegisterUserData_registerUser_userBuilder)? updates,
  ]) =>
      (GRegisterUserData_registerUser_userBuilder()..update(updates))._build();

  _$GRegisterUserData_registerUser_user._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    this.childname,
    this.childage,
    required this.auth,
  }) : super._();
  @override
  GRegisterUserData_registerUser_user rebuild(
    void Function(GRegisterUserData_registerUser_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GRegisterUserData_registerUser_userBuilder toBuilder() =>
      GRegisterUserData_registerUser_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegisterUserData_registerUser_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        password == other.password &&
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
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, childname.hashCode);
    _$hash = $jc(_$hash, childage.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRegisterUserData_registerUser_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('password', password)
          ..add('childname', childname)
          ..add('childage', childage)
          ..add('auth', auth))
        .toString();
  }
}

class GRegisterUserData_registerUser_userBuilder
    implements
        Builder<
          GRegisterUserData_registerUser_user,
          GRegisterUserData_registerUser_userBuilder
        > {
  _$GRegisterUserData_registerUser_user? _$v;

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

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _childname;
  String? get childname => _$this._childname;
  set childname(String? childname) => _$this._childname = childname;

  int? _childage;
  int? get childage => _$this._childage;
  set childage(int? childage) => _$this._childage = childage;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  GRegisterUserData_registerUser_userBuilder() {
    GRegisterUserData_registerUser_user._initializeBuilder(this);
  }

  GRegisterUserData_registerUser_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _password = $v.password;
      _childname = $v.childname;
      _childage = $v.childage;
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegisterUserData_registerUser_user other) {
    _$v = other as _$GRegisterUserData_registerUser_user;
  }

  @override
  void update(
    void Function(GRegisterUserData_registerUser_userBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GRegisterUserData_registerUser_user build() => _build();

  _$GRegisterUserData_registerUser_user _build() {
    final _$result =
        _$v ??
        _$GRegisterUserData_registerUser_user._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GRegisterUserData_registerUser_user',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GRegisterUserData_registerUser_user',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GRegisterUserData_registerUser_user',
            'name',
          ),
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'GRegisterUserData_registerUser_user',
            'email',
          ),
          password: BuiltValueNullFieldError.checkNotNull(
            password,
            r'GRegisterUserData_registerUser_user',
            'password',
          ),
          childname: childname,
          childage: childage,
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GRegisterUserData_registerUser_user',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
