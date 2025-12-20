// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSetPinVars> _$gSetPinVarsSerializer = _$GSetPinVarsSerializer();
Serializer<GLoginWithPinVars> _$gLoginWithPinVarsSerializer =
    _$GLoginWithPinVarsSerializer();
Serializer<GResetPinVars> _$gResetPinVarsSerializer =
    _$GResetPinVarsSerializer();
Serializer<GDisablePinVars> _$gDisablePinVarsSerializer =
    _$GDisablePinVarsSerializer();
Serializer<GActivatePinVars> _$gActivatePinVarsSerializer =
    _$GActivatePinVarsSerializer();
Serializer<GVerifyPinStatusVars> _$gVerifyPinStatusVarsSerializer =
    _$GVerifyPinStatusVarsSerializer();

class _$GSetPinVarsSerializer implements StructuredSerializer<GSetPinVars> {
  @override
  final Iterable<Type> types = const [GSetPinVars, _$GSetPinVars];
  @override
  final String wireName = 'GSetPinVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GSetPinVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
      'pin',
      serializers.serialize(object.pin, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSetPinVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GSetPinVarsBuilder();

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
        case 'pin':
          result.pin =
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

class _$GLoginWithPinVarsSerializer
    implements StructuredSerializer<GLoginWithPinVars> {
  @override
  final Iterable<Type> types = const [GLoginWithPinVars, _$GLoginWithPinVars];
  @override
  final String wireName = 'GLoginWithPinVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GLoginWithPinVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
      'pin',
      serializers.serialize(object.pin, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginWithPinVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GLoginWithPinVarsBuilder();

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
        case 'pin':
          result.pin =
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

class _$GResetPinVarsSerializer implements StructuredSerializer<GResetPinVars> {
  @override
  final Iterable<Type> types = const [GResetPinVars, _$GResetPinVars];
  @override
  final String wireName = 'GResetPinVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GResetPinVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
      'newPin',
      serializers.serialize(
        object.newPin,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GResetPinVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GResetPinVarsBuilder();

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
        case 'newPin':
          result.newPin =
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

class _$GDisablePinVarsSerializer
    implements StructuredSerializer<GDisablePinVars> {
  @override
  final Iterable<Type> types = const [GDisablePinVars, _$GDisablePinVars];
  @override
  final String wireName = 'GDisablePinVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDisablePinVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDisablePinVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDisablePinVarsBuilder();

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

class _$GActivatePinVarsSerializer
    implements StructuredSerializer<GActivatePinVars> {
  @override
  final Iterable<Type> types = const [GActivatePinVars, _$GActivatePinVars];
  @override
  final String wireName = 'GActivatePinVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GActivatePinVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GActivatePinVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GActivatePinVarsBuilder();

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

class _$GVerifyPinStatusVarsSerializer
    implements StructuredSerializer<GVerifyPinStatusVars> {
  @override
  final Iterable<Type> types = const [
    GVerifyPinStatusVars,
    _$GVerifyPinStatusVars,
  ];
  @override
  final String wireName = 'GVerifyPinStatusVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GVerifyPinStatusVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GVerifyPinStatusVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GVerifyPinStatusVarsBuilder();

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

class _$GSetPinVars extends GSetPinVars {
  @override
  final String auth;
  @override
  final String pin;

  factory _$GSetPinVars([void Function(GSetPinVarsBuilder)? updates]) =>
      (GSetPinVarsBuilder()..update(updates))._build();

  _$GSetPinVars._({required this.auth, required this.pin}) : super._();
  @override
  GSetPinVars rebuild(void Function(GSetPinVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSetPinVarsBuilder toBuilder() => GSetPinVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSetPinVars && auth == other.auth && pin == other.pin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, pin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSetPinVars')
          ..add('auth', auth)
          ..add('pin', pin))
        .toString();
  }
}

class GSetPinVarsBuilder implements Builder<GSetPinVars, GSetPinVarsBuilder> {
  _$GSetPinVars? _$v;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  String? _pin;
  String? get pin => _$this._pin;
  set pin(String? pin) => _$this._pin = pin;

  GSetPinVarsBuilder();

  GSetPinVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth;
      _pin = $v.pin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSetPinVars other) {
    _$v = other as _$GSetPinVars;
  }

  @override
  void update(void Function(GSetPinVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSetPinVars build() => _build();

  _$GSetPinVars _build() {
    final _$result =
        _$v ??
        _$GSetPinVars._(
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GSetPinVars',
            'auth',
          ),
          pin: BuiltValueNullFieldError.checkNotNull(
            pin,
            r'GSetPinVars',
            'pin',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GLoginWithPinVars extends GLoginWithPinVars {
  @override
  final String auth;
  @override
  final String pin;

  factory _$GLoginWithPinVars([
    void Function(GLoginWithPinVarsBuilder)? updates,
  ]) => (GLoginWithPinVarsBuilder()..update(updates))._build();

  _$GLoginWithPinVars._({required this.auth, required this.pin}) : super._();
  @override
  GLoginWithPinVars rebuild(void Function(GLoginWithPinVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginWithPinVarsBuilder toBuilder() =>
      GLoginWithPinVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginWithPinVars && auth == other.auth && pin == other.pin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, pin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginWithPinVars')
          ..add('auth', auth)
          ..add('pin', pin))
        .toString();
  }
}

class GLoginWithPinVarsBuilder
    implements Builder<GLoginWithPinVars, GLoginWithPinVarsBuilder> {
  _$GLoginWithPinVars? _$v;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  String? _pin;
  String? get pin => _$this._pin;
  set pin(String? pin) => _$this._pin = pin;

  GLoginWithPinVarsBuilder();

  GLoginWithPinVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth;
      _pin = $v.pin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginWithPinVars other) {
    _$v = other as _$GLoginWithPinVars;
  }

  @override
  void update(void Function(GLoginWithPinVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginWithPinVars build() => _build();

  _$GLoginWithPinVars _build() {
    final _$result =
        _$v ??
        _$GLoginWithPinVars._(
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GLoginWithPinVars',
            'auth',
          ),
          pin: BuiltValueNullFieldError.checkNotNull(
            pin,
            r'GLoginWithPinVars',
            'pin',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GResetPinVars extends GResetPinVars {
  @override
  final String auth;
  @override
  final String newPin;

  factory _$GResetPinVars([void Function(GResetPinVarsBuilder)? updates]) =>
      (GResetPinVarsBuilder()..update(updates))._build();

  _$GResetPinVars._({required this.auth, required this.newPin}) : super._();
  @override
  GResetPinVars rebuild(void Function(GResetPinVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GResetPinVarsBuilder toBuilder() => GResetPinVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GResetPinVars &&
        auth == other.auth &&
        newPin == other.newPin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, newPin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GResetPinVars')
          ..add('auth', auth)
          ..add('newPin', newPin))
        .toString();
  }
}

class GResetPinVarsBuilder
    implements Builder<GResetPinVars, GResetPinVarsBuilder> {
  _$GResetPinVars? _$v;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  String? _newPin;
  String? get newPin => _$this._newPin;
  set newPin(String? newPin) => _$this._newPin = newPin;

  GResetPinVarsBuilder();

  GResetPinVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth;
      _newPin = $v.newPin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GResetPinVars other) {
    _$v = other as _$GResetPinVars;
  }

  @override
  void update(void Function(GResetPinVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GResetPinVars build() => _build();

  _$GResetPinVars _build() {
    final _$result =
        _$v ??
        _$GResetPinVars._(
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GResetPinVars',
            'auth',
          ),
          newPin: BuiltValueNullFieldError.checkNotNull(
            newPin,
            r'GResetPinVars',
            'newPin',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GDisablePinVars extends GDisablePinVars {
  @override
  final String auth;

  factory _$GDisablePinVars([void Function(GDisablePinVarsBuilder)? updates]) =>
      (GDisablePinVarsBuilder()..update(updates))._build();

  _$GDisablePinVars._({required this.auth}) : super._();
  @override
  GDisablePinVars rebuild(void Function(GDisablePinVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDisablePinVarsBuilder toBuilder() => GDisablePinVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDisablePinVars && auth == other.auth;
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
      r'GDisablePinVars',
    )..add('auth', auth)).toString();
  }
}

class GDisablePinVarsBuilder
    implements Builder<GDisablePinVars, GDisablePinVarsBuilder> {
  _$GDisablePinVars? _$v;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  GDisablePinVarsBuilder();

  GDisablePinVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDisablePinVars other) {
    _$v = other as _$GDisablePinVars;
  }

  @override
  void update(void Function(GDisablePinVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDisablePinVars build() => _build();

  _$GDisablePinVars _build() {
    final _$result =
        _$v ??
        _$GDisablePinVars._(
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GDisablePinVars',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GActivatePinVars extends GActivatePinVars {
  @override
  final String auth;

  factory _$GActivatePinVars([
    void Function(GActivatePinVarsBuilder)? updates,
  ]) => (GActivatePinVarsBuilder()..update(updates))._build();

  _$GActivatePinVars._({required this.auth}) : super._();
  @override
  GActivatePinVars rebuild(void Function(GActivatePinVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivatePinVarsBuilder toBuilder() =>
      GActivatePinVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivatePinVars && auth == other.auth;
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
      r'GActivatePinVars',
    )..add('auth', auth)).toString();
  }
}

class GActivatePinVarsBuilder
    implements Builder<GActivatePinVars, GActivatePinVarsBuilder> {
  _$GActivatePinVars? _$v;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  GActivatePinVarsBuilder();

  GActivatePinVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivatePinVars other) {
    _$v = other as _$GActivatePinVars;
  }

  @override
  void update(void Function(GActivatePinVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivatePinVars build() => _build();

  _$GActivatePinVars _build() {
    final _$result =
        _$v ??
        _$GActivatePinVars._(
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GActivatePinVars',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GVerifyPinStatusVars extends GVerifyPinStatusVars {
  @override
  final String auth;

  factory _$GVerifyPinStatusVars([
    void Function(GVerifyPinStatusVarsBuilder)? updates,
  ]) => (GVerifyPinStatusVarsBuilder()..update(updates))._build();

  _$GVerifyPinStatusVars._({required this.auth}) : super._();
  @override
  GVerifyPinStatusVars rebuild(
    void Function(GVerifyPinStatusVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GVerifyPinStatusVarsBuilder toBuilder() =>
      GVerifyPinStatusVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVerifyPinStatusVars && auth == other.auth;
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
      r'GVerifyPinStatusVars',
    )..add('auth', auth)).toString();
  }
}

class GVerifyPinStatusVarsBuilder
    implements Builder<GVerifyPinStatusVars, GVerifyPinStatusVarsBuilder> {
  _$GVerifyPinStatusVars? _$v;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  GVerifyPinStatusVarsBuilder();

  GVerifyPinStatusVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVerifyPinStatusVars other) {
    _$v = other as _$GVerifyPinStatusVars;
  }

  @override
  void update(void Function(GVerifyPinStatusVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVerifyPinStatusVars build() => _build();

  _$GVerifyPinStatusVars _build() {
    final _$result =
        _$v ??
        _$GVerifyPinStatusVars._(
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GVerifyPinStatusVars',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
