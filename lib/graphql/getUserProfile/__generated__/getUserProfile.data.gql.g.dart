// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getUserProfile.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserByTokenData> _$gGetUserByTokenDataSerializer =
    _$GGetUserByTokenDataSerializer();
Serializer<GGetUserByTokenData_getUserByToken>
_$gGetUserByTokenDataGetUserByTokenSerializer =
    _$GGetUserByTokenData_getUserByTokenSerializer();
Serializer<GGetUserByTokenData_getUserByToken_user>
_$gGetUserByTokenDataGetUserByTokenUserSerializer =
    _$GGetUserByTokenData_getUserByToken_userSerializer();

class _$GGetUserByTokenDataSerializer
    implements StructuredSerializer<GGetUserByTokenData> {
  @override
  final Iterable<Type> types = const [
    GGetUserByTokenData,
    _$GGetUserByTokenData,
  ];
  @override
  final String wireName = 'GGetUserByTokenData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetUserByTokenData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'getUserByToken',
      serializers.serialize(
        object.getUserByToken,
        specifiedType: const FullType(GGetUserByTokenData_getUserByToken),
      ),
    ];

    return result;
  }

  @override
  GGetUserByTokenData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetUserByTokenDataBuilder();

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
        case 'getUserByToken':
          result.getUserByToken.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetUserByTokenData_getUserByToken,
                  ),
                )!
                as GGetUserByTokenData_getUserByToken,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserByTokenData_getUserByTokenSerializer
    implements StructuredSerializer<GGetUserByTokenData_getUserByToken> {
  @override
  final Iterable<Type> types = const [
    GGetUserByTokenData_getUserByToken,
    _$GGetUserByTokenData_getUserByToken,
  ];
  @override
  final String wireName = 'GGetUserByTokenData_getUserByToken';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetUserByTokenData_getUserByToken object, {
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
              GGetUserByTokenData_getUserByToken_user,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GGetUserByTokenData_getUserByToken deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetUserByTokenData_getUserByTokenBuilder();

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
                    GGetUserByTokenData_getUserByToken_user,
                  ),
                )!
                as GGetUserByTokenData_getUserByToken_user,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserByTokenData_getUserByToken_userSerializer
    implements StructuredSerializer<GGetUserByTokenData_getUserByToken_user> {
  @override
  final Iterable<Type> types = const [
    GGetUserByTokenData_getUserByToken_user,
    _$GGetUserByTokenData_getUserByToken_user,
  ];
  @override
  final String wireName = 'GGetUserByTokenData_getUserByToken_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetUserByTokenData_getUserByToken_user object, {
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
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
  GGetUserByTokenData_getUserByToken_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetUserByTokenData_getUserByToken_userBuilder();

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
        case 'image':
          result.image =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
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

class _$GGetUserByTokenData extends GGetUserByTokenData {
  @override
  final String G__typename;
  @override
  final GGetUserByTokenData_getUserByToken getUserByToken;

  factory _$GGetUserByTokenData([
    void Function(GGetUserByTokenDataBuilder)? updates,
  ]) => (GGetUserByTokenDataBuilder()..update(updates))._build();

  _$GGetUserByTokenData._({
    required this.G__typename,
    required this.getUserByToken,
  }) : super._();
  @override
  GGetUserByTokenData rebuild(
    void Function(GGetUserByTokenDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetUserByTokenDataBuilder toBuilder() =>
      GGetUserByTokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserByTokenData &&
        G__typename == other.G__typename &&
        getUserByToken == other.getUserByToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getUserByToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUserByTokenData')
          ..add('G__typename', G__typename)
          ..add('getUserByToken', getUserByToken))
        .toString();
  }
}

class GGetUserByTokenDataBuilder
    implements Builder<GGetUserByTokenData, GGetUserByTokenDataBuilder> {
  _$GGetUserByTokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetUserByTokenData_getUserByTokenBuilder? _getUserByToken;
  GGetUserByTokenData_getUserByTokenBuilder get getUserByToken =>
      _$this._getUserByToken ??= GGetUserByTokenData_getUserByTokenBuilder();
  set getUserByToken(
    GGetUserByTokenData_getUserByTokenBuilder? getUserByToken,
  ) => _$this._getUserByToken = getUserByToken;

  GGetUserByTokenDataBuilder() {
    GGetUserByTokenData._initializeBuilder(this);
  }

  GGetUserByTokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getUserByToken = $v.getUserByToken.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserByTokenData other) {
    _$v = other as _$GGetUserByTokenData;
  }

  @override
  void update(void Function(GGetUserByTokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserByTokenData build() => _build();

  _$GGetUserByTokenData _build() {
    _$GGetUserByTokenData _$result;
    try {
      _$result =
          _$v ??
          _$GGetUserByTokenData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetUserByTokenData',
              'G__typename',
            ),
            getUserByToken: getUserByToken.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getUserByToken';
        getUserByToken.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetUserByTokenData',
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

class _$GGetUserByTokenData_getUserByToken
    extends GGetUserByTokenData_getUserByToken {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final GGetUserByTokenData_getUserByToken_user? user;

  factory _$GGetUserByTokenData_getUserByToken([
    void Function(GGetUserByTokenData_getUserByTokenBuilder)? updates,
  ]) => (GGetUserByTokenData_getUserByTokenBuilder()..update(updates))._build();

  _$GGetUserByTokenData_getUserByToken._({
    required this.G__typename,
    required this.status,
    required this.message,
    this.user,
  }) : super._();
  @override
  GGetUserByTokenData_getUserByToken rebuild(
    void Function(GGetUserByTokenData_getUserByTokenBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetUserByTokenData_getUserByTokenBuilder toBuilder() =>
      GGetUserByTokenData_getUserByTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserByTokenData_getUserByToken &&
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
    return (newBuiltValueToStringHelper(r'GGetUserByTokenData_getUserByToken')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class GGetUserByTokenData_getUserByTokenBuilder
    implements
        Builder<
          GGetUserByTokenData_getUserByToken,
          GGetUserByTokenData_getUserByTokenBuilder
        > {
  _$GGetUserByTokenData_getUserByToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GGetUserByTokenData_getUserByToken_userBuilder? _user;
  GGetUserByTokenData_getUserByToken_userBuilder get user =>
      _$this._user ??= GGetUserByTokenData_getUserByToken_userBuilder();
  set user(GGetUserByTokenData_getUserByToken_userBuilder? user) =>
      _$this._user = user;

  GGetUserByTokenData_getUserByTokenBuilder() {
    GGetUserByTokenData_getUserByToken._initializeBuilder(this);
  }

  GGetUserByTokenData_getUserByTokenBuilder get _$this {
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
  void replace(GGetUserByTokenData_getUserByToken other) {
    _$v = other as _$GGetUserByTokenData_getUserByToken;
  }

  @override
  void update(
    void Function(GGetUserByTokenData_getUserByTokenBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserByTokenData_getUserByToken build() => _build();

  _$GGetUserByTokenData_getUserByToken _build() {
    _$GGetUserByTokenData_getUserByToken _$result;
    try {
      _$result =
          _$v ??
          _$GGetUserByTokenData_getUserByToken._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetUserByTokenData_getUserByToken',
              'G__typename',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GGetUserByTokenData_getUserByToken',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GGetUserByTokenData_getUserByToken',
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
          r'GGetUserByTokenData_getUserByToken',
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

class _$GGetUserByTokenData_getUserByToken_user
    extends GGetUserByTokenData_getUserByToken_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? image;
  @override
  final String email;
  @override
  final String? childname;
  @override
  final int? childage;
  @override
  final String auth;

  factory _$GGetUserByTokenData_getUserByToken_user([
    void Function(GGetUserByTokenData_getUserByToken_userBuilder)? updates,
  ]) => (GGetUserByTokenData_getUserByToken_userBuilder()..update(updates))
      ._build();

  _$GGetUserByTokenData_getUserByToken_user._({
    required this.G__typename,
    required this.id,
    required this.name,
    this.image,
    required this.email,
    this.childname,
    this.childage,
    required this.auth,
  }) : super._();
  @override
  GGetUserByTokenData_getUserByToken_user rebuild(
    void Function(GGetUserByTokenData_getUserByToken_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetUserByTokenData_getUserByToken_userBuilder toBuilder() =>
      GGetUserByTokenData_getUserByToken_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserByTokenData_getUserByToken_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
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
    _$hash = $jc(_$hash, image.hashCode);
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
            r'GGetUserByTokenData_getUserByToken_user',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image)
          ..add('email', email)
          ..add('childname', childname)
          ..add('childage', childage)
          ..add('auth', auth))
        .toString();
  }
}

class GGetUserByTokenData_getUserByToken_userBuilder
    implements
        Builder<
          GGetUserByTokenData_getUserByToken_user,
          GGetUserByTokenData_getUserByToken_userBuilder
        > {
  _$GGetUserByTokenData_getUserByToken_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

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

  GGetUserByTokenData_getUserByToken_userBuilder() {
    GGetUserByTokenData_getUserByToken_user._initializeBuilder(this);
  }

  GGetUserByTokenData_getUserByToken_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _image = $v.image;
      _email = $v.email;
      _childname = $v.childname;
      _childage = $v.childage;
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserByTokenData_getUserByToken_user other) {
    _$v = other as _$GGetUserByTokenData_getUserByToken_user;
  }

  @override
  void update(
    void Function(GGetUserByTokenData_getUserByToken_userBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserByTokenData_getUserByToken_user build() => _build();

  _$GGetUserByTokenData_getUserByToken_user _build() {
    final _$result =
        _$v ??
        _$GGetUserByTokenData_getUserByToken_user._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetUserByTokenData_getUserByToken_user',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GGetUserByTokenData_getUserByToken_user',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GGetUserByTokenData_getUserByToken_user',
            'name',
          ),
          image: image,
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'GGetUserByTokenData_getUserByToken_user',
            'email',
          ),
          childname: childname,
          childage: childage,
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GGetUserByTokenData_getUserByToken_user',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
