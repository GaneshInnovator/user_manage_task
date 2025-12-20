// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userLogin.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginUserData> _$gLoginUserDataSerializer =
    _$GLoginUserDataSerializer();
Serializer<GLoginUserData_loginUser> _$gLoginUserDataLoginUserSerializer =
    _$GLoginUserData_loginUserSerializer();
Serializer<GLoginUserData_loginUser_user>
_$gLoginUserDataLoginUserUserSerializer =
    _$GLoginUserData_loginUser_userSerializer();

class _$GLoginUserDataSerializer
    implements StructuredSerializer<GLoginUserData> {
  @override
  final Iterable<Type> types = const [GLoginUserData, _$GLoginUserData];
  @override
  final String wireName = 'GLoginUserData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GLoginUserData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'loginUser',
      serializers.serialize(
        object.loginUser,
        specifiedType: const FullType(GLoginUserData_loginUser),
      ),
    ];

    return result;
  }

  @override
  GLoginUserData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GLoginUserDataBuilder();

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
        case 'loginUser':
          result.loginUser.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GLoginUserData_loginUser),
                )!
                as GLoginUserData_loginUser,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginUserData_loginUserSerializer
    implements StructuredSerializer<GLoginUserData_loginUser> {
  @override
  final Iterable<Type> types = const [
    GLoginUserData_loginUser,
    _$GLoginUserData_loginUser,
  ];
  @override
  final String wireName = 'GLoginUserData_loginUser';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GLoginUserData_loginUser object, {
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
            specifiedType: const FullType(GLoginUserData_loginUser_user),
          ),
        );
    }
    return result;
  }

  @override
  GLoginUserData_loginUser deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GLoginUserData_loginUserBuilder();

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
                  specifiedType: const FullType(GLoginUserData_loginUser_user),
                )!
                as GLoginUserData_loginUser_user,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginUserData_loginUser_userSerializer
    implements StructuredSerializer<GLoginUserData_loginUser_user> {
  @override
  final Iterable<Type> types = const [
    GLoginUserData_loginUser_user,
    _$GLoginUserData_loginUser_user,
  ];
  @override
  final String wireName = 'GLoginUserData_loginUser_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GLoginUserData_loginUser_user object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
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
  GLoginUserData_loginUser_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GLoginUserData_loginUser_userBuilder();

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
        case 'auth':
          result.auth =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
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

class _$GLoginUserData extends GLoginUserData {
  @override
  final String G__typename;
  @override
  final GLoginUserData_loginUser loginUser;

  factory _$GLoginUserData([void Function(GLoginUserDataBuilder)? updates]) =>
      (GLoginUserDataBuilder()..update(updates))._build();

  _$GLoginUserData._({required this.G__typename, required this.loginUser})
    : super._();
  @override
  GLoginUserData rebuild(void Function(GLoginUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginUserDataBuilder toBuilder() => GLoginUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginUserData &&
        G__typename == other.G__typename &&
        loginUser == other.loginUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, loginUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginUserData')
          ..add('G__typename', G__typename)
          ..add('loginUser', loginUser))
        .toString();
  }
}

class GLoginUserDataBuilder
    implements Builder<GLoginUserData, GLoginUserDataBuilder> {
  _$GLoginUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLoginUserData_loginUserBuilder? _loginUser;
  GLoginUserData_loginUserBuilder get loginUser =>
      _$this._loginUser ??= GLoginUserData_loginUserBuilder();
  set loginUser(GLoginUserData_loginUserBuilder? loginUser) =>
      _$this._loginUser = loginUser;

  GLoginUserDataBuilder() {
    GLoginUserData._initializeBuilder(this);
  }

  GLoginUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _loginUser = $v.loginUser.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginUserData other) {
    _$v = other as _$GLoginUserData;
  }

  @override
  void update(void Function(GLoginUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginUserData build() => _build();

  _$GLoginUserData _build() {
    _$GLoginUserData _$result;
    try {
      _$result =
          _$v ??
          _$GLoginUserData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GLoginUserData',
              'G__typename',
            ),
            loginUser: loginUser.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loginUser';
        loginUser.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GLoginUserData',
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

class _$GLoginUserData_loginUser extends GLoginUserData_loginUser {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final GLoginUserData_loginUser_user? user;

  factory _$GLoginUserData_loginUser([
    void Function(GLoginUserData_loginUserBuilder)? updates,
  ]) => (GLoginUserData_loginUserBuilder()..update(updates))._build();

  _$GLoginUserData_loginUser._({
    required this.G__typename,
    required this.status,
    required this.message,
    this.user,
  }) : super._();
  @override
  GLoginUserData_loginUser rebuild(
    void Function(GLoginUserData_loginUserBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GLoginUserData_loginUserBuilder toBuilder() =>
      GLoginUserData_loginUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginUserData_loginUser &&
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
    return (newBuiltValueToStringHelper(r'GLoginUserData_loginUser')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class GLoginUserData_loginUserBuilder
    implements
        Builder<GLoginUserData_loginUser, GLoginUserData_loginUserBuilder> {
  _$GLoginUserData_loginUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GLoginUserData_loginUser_userBuilder? _user;
  GLoginUserData_loginUser_userBuilder get user =>
      _$this._user ??= GLoginUserData_loginUser_userBuilder();
  set user(GLoginUserData_loginUser_userBuilder? user) => _$this._user = user;

  GLoginUserData_loginUserBuilder() {
    GLoginUserData_loginUser._initializeBuilder(this);
  }

  GLoginUserData_loginUserBuilder get _$this {
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
  void replace(GLoginUserData_loginUser other) {
    _$v = other as _$GLoginUserData_loginUser;
  }

  @override
  void update(void Function(GLoginUserData_loginUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginUserData_loginUser build() => _build();

  _$GLoginUserData_loginUser _build() {
    _$GLoginUserData_loginUser _$result;
    try {
      _$result =
          _$v ??
          _$GLoginUserData_loginUser._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GLoginUserData_loginUser',
              'G__typename',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GLoginUserData_loginUser',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GLoginUserData_loginUser',
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
          r'GLoginUserData_loginUser',
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

class _$GLoginUserData_loginUser_user extends GLoginUserData_loginUser_user {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? childname;
  @override
  final String auth;
  @override
  final int? childage;

  factory _$GLoginUserData_loginUser_user([
    void Function(GLoginUserData_loginUser_userBuilder)? updates,
  ]) => (GLoginUserData_loginUser_userBuilder()..update(updates))._build();

  _$GLoginUserData_loginUser_user._({
    required this.G__typename,
    required this.name,
    required this.email,
    this.childname,
    required this.auth,
    this.childage,
  }) : super._();
  @override
  GLoginUserData_loginUser_user rebuild(
    void Function(GLoginUserData_loginUser_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GLoginUserData_loginUser_userBuilder toBuilder() =>
      GLoginUserData_loginUser_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginUserData_loginUser_user &&
        G__typename == other.G__typename &&
        name == other.name &&
        email == other.email &&
        childname == other.childname &&
        auth == other.auth &&
        childage == other.childage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, childname.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, childage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginUserData_loginUser_user')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('email', email)
          ..add('childname', childname)
          ..add('auth', auth)
          ..add('childage', childage))
        .toString();
  }
}

class GLoginUserData_loginUser_userBuilder
    implements
        Builder<
          GLoginUserData_loginUser_user,
          GLoginUserData_loginUser_userBuilder
        > {
  _$GLoginUserData_loginUser_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _childname;
  String? get childname => _$this._childname;
  set childname(String? childname) => _$this._childname = childname;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  int? _childage;
  int? get childage => _$this._childage;
  set childage(int? childage) => _$this._childage = childage;

  GLoginUserData_loginUser_userBuilder() {
    GLoginUserData_loginUser_user._initializeBuilder(this);
  }

  GLoginUserData_loginUser_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _email = $v.email;
      _childname = $v.childname;
      _auth = $v.auth;
      _childage = $v.childage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginUserData_loginUser_user other) {
    _$v = other as _$GLoginUserData_loginUser_user;
  }

  @override
  void update(void Function(GLoginUserData_loginUser_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginUserData_loginUser_user build() => _build();

  _$GLoginUserData_loginUser_user _build() {
    final _$result =
        _$v ??
        _$GLoginUserData_loginUser_user._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GLoginUserData_loginUser_user',
            'G__typename',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GLoginUserData_loginUser_user',
            'name',
          ),
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'GLoginUserData_loginUser_user',
            'email',
          ),
          childname: childname,
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GLoginUserData_loginUser_user',
            'auth',
          ),
          childage: childage,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
