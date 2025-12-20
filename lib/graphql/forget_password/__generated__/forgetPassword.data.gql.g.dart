// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgetPassword.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GForgetPasswordData> _$gForgetPasswordDataSerializer =
    _$GForgetPasswordDataSerializer();
Serializer<GForgetPasswordData_forgetPassword>
_$gForgetPasswordDataForgetPasswordSerializer =
    _$GForgetPasswordData_forgetPasswordSerializer();
Serializer<GForgetPasswordData_forgetPassword_user>
_$gForgetPasswordDataForgetPasswordUserSerializer =
    _$GForgetPasswordData_forgetPassword_userSerializer();

class _$GForgetPasswordDataSerializer
    implements StructuredSerializer<GForgetPasswordData> {
  @override
  final Iterable<Type> types = const [
    GForgetPasswordData,
    _$GForgetPasswordData,
  ];
  @override
  final String wireName = 'GForgetPasswordData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GForgetPasswordData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'forgetPassword',
      serializers.serialize(
        object.forgetPassword,
        specifiedType: const FullType(GForgetPasswordData_forgetPassword),
      ),
    ];

    return result;
  }

  @override
  GForgetPasswordData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GForgetPasswordDataBuilder();

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
        case 'forgetPassword':
          result.forgetPassword.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GForgetPasswordData_forgetPassword,
                  ),
                )!
                as GForgetPasswordData_forgetPassword,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GForgetPasswordData_forgetPasswordSerializer
    implements StructuredSerializer<GForgetPasswordData_forgetPassword> {
  @override
  final Iterable<Type> types = const [
    GForgetPasswordData_forgetPassword,
    _$GForgetPasswordData_forgetPassword,
  ];
  @override
  final String wireName = 'GForgetPasswordData_forgetPassword';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GForgetPasswordData_forgetPassword object, {
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
              GForgetPasswordData_forgetPassword_user,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GForgetPasswordData_forgetPassword deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GForgetPasswordData_forgetPasswordBuilder();

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
                    GForgetPasswordData_forgetPassword_user,
                  ),
                )!
                as GForgetPasswordData_forgetPassword_user,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GForgetPasswordData_forgetPassword_userSerializer
    implements StructuredSerializer<GForgetPasswordData_forgetPassword_user> {
  @override
  final Iterable<Type> types = const [
    GForgetPasswordData_forgetPassword_user,
    _$GForgetPasswordData_forgetPassword_user,
  ];
  @override
  final String wireName = 'GForgetPasswordData_forgetPassword_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GForgetPasswordData_forgetPassword_user object, {
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
  GForgetPasswordData_forgetPassword_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GForgetPasswordData_forgetPassword_userBuilder();

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

class _$GForgetPasswordData extends GForgetPasswordData {
  @override
  final String G__typename;
  @override
  final GForgetPasswordData_forgetPassword forgetPassword;

  factory _$GForgetPasswordData([
    void Function(GForgetPasswordDataBuilder)? updates,
  ]) => (GForgetPasswordDataBuilder()..update(updates))._build();

  _$GForgetPasswordData._({
    required this.G__typename,
    required this.forgetPassword,
  }) : super._();
  @override
  GForgetPasswordData rebuild(
    void Function(GForgetPasswordDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GForgetPasswordDataBuilder toBuilder() =>
      GForgetPasswordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForgetPasswordData &&
        G__typename == other.G__typename &&
        forgetPassword == other.forgetPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, forgetPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForgetPasswordData')
          ..add('G__typename', G__typename)
          ..add('forgetPassword', forgetPassword))
        .toString();
  }
}

class GForgetPasswordDataBuilder
    implements Builder<GForgetPasswordData, GForgetPasswordDataBuilder> {
  _$GForgetPasswordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GForgetPasswordData_forgetPasswordBuilder? _forgetPassword;
  GForgetPasswordData_forgetPasswordBuilder get forgetPassword =>
      _$this._forgetPassword ??= GForgetPasswordData_forgetPasswordBuilder();
  set forgetPassword(
    GForgetPasswordData_forgetPasswordBuilder? forgetPassword,
  ) => _$this._forgetPassword = forgetPassword;

  GForgetPasswordDataBuilder() {
    GForgetPasswordData._initializeBuilder(this);
  }

  GForgetPasswordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _forgetPassword = $v.forgetPassword.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForgetPasswordData other) {
    _$v = other as _$GForgetPasswordData;
  }

  @override
  void update(void Function(GForgetPasswordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForgetPasswordData build() => _build();

  _$GForgetPasswordData _build() {
    _$GForgetPasswordData _$result;
    try {
      _$result =
          _$v ??
          _$GForgetPasswordData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GForgetPasswordData',
              'G__typename',
            ),
            forgetPassword: forgetPassword.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'forgetPassword';
        forgetPassword.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GForgetPasswordData',
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

class _$GForgetPasswordData_forgetPassword
    extends GForgetPasswordData_forgetPassword {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final GForgetPasswordData_forgetPassword_user? user;

  factory _$GForgetPasswordData_forgetPassword([
    void Function(GForgetPasswordData_forgetPasswordBuilder)? updates,
  ]) => (GForgetPasswordData_forgetPasswordBuilder()..update(updates))._build();

  _$GForgetPasswordData_forgetPassword._({
    required this.G__typename,
    required this.status,
    required this.message,
    this.user,
  }) : super._();
  @override
  GForgetPasswordData_forgetPassword rebuild(
    void Function(GForgetPasswordData_forgetPasswordBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GForgetPasswordData_forgetPasswordBuilder toBuilder() =>
      GForgetPasswordData_forgetPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForgetPasswordData_forgetPassword &&
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
    return (newBuiltValueToStringHelper(r'GForgetPasswordData_forgetPassword')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class GForgetPasswordData_forgetPasswordBuilder
    implements
        Builder<
          GForgetPasswordData_forgetPassword,
          GForgetPasswordData_forgetPasswordBuilder
        > {
  _$GForgetPasswordData_forgetPassword? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GForgetPasswordData_forgetPassword_userBuilder? _user;
  GForgetPasswordData_forgetPassword_userBuilder get user =>
      _$this._user ??= GForgetPasswordData_forgetPassword_userBuilder();
  set user(GForgetPasswordData_forgetPassword_userBuilder? user) =>
      _$this._user = user;

  GForgetPasswordData_forgetPasswordBuilder() {
    GForgetPasswordData_forgetPassword._initializeBuilder(this);
  }

  GForgetPasswordData_forgetPasswordBuilder get _$this {
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
  void replace(GForgetPasswordData_forgetPassword other) {
    _$v = other as _$GForgetPasswordData_forgetPassword;
  }

  @override
  void update(
    void Function(GForgetPasswordData_forgetPasswordBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GForgetPasswordData_forgetPassword build() => _build();

  _$GForgetPasswordData_forgetPassword _build() {
    _$GForgetPasswordData_forgetPassword _$result;
    try {
      _$result =
          _$v ??
          _$GForgetPasswordData_forgetPassword._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GForgetPasswordData_forgetPassword',
              'G__typename',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GForgetPasswordData_forgetPassword',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GForgetPasswordData_forgetPassword',
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
          r'GForgetPasswordData_forgetPassword',
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

class _$GForgetPasswordData_forgetPassword_user
    extends GForgetPasswordData_forgetPassword_user {
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

  factory _$GForgetPasswordData_forgetPassword_user([
    void Function(GForgetPasswordData_forgetPassword_userBuilder)? updates,
  ]) => (GForgetPasswordData_forgetPassword_userBuilder()..update(updates))
      ._build();

  _$GForgetPasswordData_forgetPassword_user._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.email,
    this.childname,
    this.childage,
    required this.auth,
  }) : super._();
  @override
  GForgetPasswordData_forgetPassword_user rebuild(
    void Function(GForgetPasswordData_forgetPassword_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GForgetPasswordData_forgetPassword_userBuilder toBuilder() =>
      GForgetPasswordData_forgetPassword_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForgetPasswordData_forgetPassword_user &&
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
            r'GForgetPasswordData_forgetPassword_user',
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

class GForgetPasswordData_forgetPassword_userBuilder
    implements
        Builder<
          GForgetPasswordData_forgetPassword_user,
          GForgetPasswordData_forgetPassword_userBuilder
        > {
  _$GForgetPasswordData_forgetPassword_user? _$v;

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

  GForgetPasswordData_forgetPassword_userBuilder() {
    GForgetPasswordData_forgetPassword_user._initializeBuilder(this);
  }

  GForgetPasswordData_forgetPassword_userBuilder get _$this {
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
  void replace(GForgetPasswordData_forgetPassword_user other) {
    _$v = other as _$GForgetPasswordData_forgetPassword_user;
  }

  @override
  void update(
    void Function(GForgetPasswordData_forgetPassword_userBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GForgetPasswordData_forgetPassword_user build() => _build();

  _$GForgetPasswordData_forgetPassword_user _build() {
    final _$result =
        _$v ??
        _$GForgetPasswordData_forgetPassword_user._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GForgetPasswordData_forgetPassword_user',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GForgetPasswordData_forgetPassword_user',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GForgetPasswordData_forgetPassword_user',
            'name',
          ),
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'GForgetPasswordData_forgetPassword_user',
            'email',
          ),
          childname: childname,
          childage: childage,
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GForgetPasswordData_forgetPassword_user',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
