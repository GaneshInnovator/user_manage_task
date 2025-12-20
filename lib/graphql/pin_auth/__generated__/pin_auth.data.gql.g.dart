// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_auth.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSetPinData> _$gSetPinDataSerializer = _$GSetPinDataSerializer();
Serializer<GSetPinData_setPin> _$gSetPinDataSetPinSerializer =
    _$GSetPinData_setPinSerializer();
Serializer<GSetPinData_setPin_user> _$gSetPinDataSetPinUserSerializer =
    _$GSetPinData_setPin_userSerializer();
Serializer<GLoginWithPinData> _$gLoginWithPinDataSerializer =
    _$GLoginWithPinDataSerializer();
Serializer<GLoginWithPinData_loginWithPin>
_$gLoginWithPinDataLoginWithPinSerializer =
    _$GLoginWithPinData_loginWithPinSerializer();
Serializer<GLoginWithPinData_loginWithPin_user>
_$gLoginWithPinDataLoginWithPinUserSerializer =
    _$GLoginWithPinData_loginWithPin_userSerializer();
Serializer<GResetPinData> _$gResetPinDataSerializer =
    _$GResetPinDataSerializer();
Serializer<GResetPinData_resetPin> _$gResetPinDataResetPinSerializer =
    _$GResetPinData_resetPinSerializer();
Serializer<GResetPinData_resetPin_user> _$gResetPinDataResetPinUserSerializer =
    _$GResetPinData_resetPin_userSerializer();
Serializer<GDisablePinData> _$gDisablePinDataSerializer =
    _$GDisablePinDataSerializer();
Serializer<GDisablePinData_disablePin> _$gDisablePinDataDisablePinSerializer =
    _$GDisablePinData_disablePinSerializer();
Serializer<GDisablePinData_disablePin_user>
_$gDisablePinDataDisablePinUserSerializer =
    _$GDisablePinData_disablePin_userSerializer();
Serializer<GActivatePinData> _$gActivatePinDataSerializer =
    _$GActivatePinDataSerializer();
Serializer<GActivatePinData_activatePin>
_$gActivatePinDataActivatePinSerializer =
    _$GActivatePinData_activatePinSerializer();
Serializer<GActivatePinData_activatePin_user>
_$gActivatePinDataActivatePinUserSerializer =
    _$GActivatePinData_activatePin_userSerializer();
Serializer<GVerifyPinStatusData> _$gVerifyPinStatusDataSerializer =
    _$GVerifyPinStatusDataSerializer();
Serializer<GVerifyPinStatusData_verifyPinStatus>
_$gVerifyPinStatusDataVerifyPinStatusSerializer =
    _$GVerifyPinStatusData_verifyPinStatusSerializer();

class _$GSetPinDataSerializer implements StructuredSerializer<GSetPinData> {
  @override
  final Iterable<Type> types = const [GSetPinData, _$GSetPinData];
  @override
  final String wireName = 'GSetPinData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GSetPinData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'setPin',
      serializers.serialize(
        object.setPin,
        specifiedType: const FullType(GSetPinData_setPin),
      ),
    ];

    return result;
  }

  @override
  GSetPinData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GSetPinDataBuilder();

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
        case 'setPin':
          result.setPin.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GSetPinData_setPin),
                )!
                as GSetPinData_setPin,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GSetPinData_setPinSerializer
    implements StructuredSerializer<GSetPinData_setPin> {
  @override
  final Iterable<Type> types = const [GSetPinData_setPin, _$GSetPinData_setPin];
  @override
  final String wireName = 'GSetPinData_setPin';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GSetPinData_setPin object, {
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
            specifiedType: const FullType(GSetPinData_setPin_user),
          ),
        );
    }
    return result;
  }

  @override
  GSetPinData_setPin deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GSetPinData_setPinBuilder();

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
                  specifiedType: const FullType(GSetPinData_setPin_user),
                )!
                as GSetPinData_setPin_user,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GSetPinData_setPin_userSerializer
    implements StructuredSerializer<GSetPinData_setPin_user> {
  @override
  final Iterable<Type> types = const [
    GSetPinData_setPin_user,
    _$GSetPinData_setPin_user,
  ];
  @override
  final String wireName = 'GSetPinData_setPin_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GSetPinData_setPin_user object, {
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
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.setUserPin;
    if (value != null) {
      result
        ..add('setUserPin')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(bool)),
        );
    }
    return result;
  }

  @override
  GSetPinData_setPin_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GSetPinData_setPin_userBuilder();

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
        case 'auth':
          result.auth =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'setUserPin':
          result.setUserPin =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginWithPinDataSerializer
    implements StructuredSerializer<GLoginWithPinData> {
  @override
  final Iterable<Type> types = const [GLoginWithPinData, _$GLoginWithPinData];
  @override
  final String wireName = 'GLoginWithPinData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GLoginWithPinData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'loginWithPin',
      serializers.serialize(
        object.loginWithPin,
        specifiedType: const FullType(GLoginWithPinData_loginWithPin),
      ),
    ];

    return result;
  }

  @override
  GLoginWithPinData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GLoginWithPinDataBuilder();

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
        case 'loginWithPin':
          result.loginWithPin.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GLoginWithPinData_loginWithPin),
                )!
                as GLoginWithPinData_loginWithPin,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginWithPinData_loginWithPinSerializer
    implements StructuredSerializer<GLoginWithPinData_loginWithPin> {
  @override
  final Iterable<Type> types = const [
    GLoginWithPinData_loginWithPin,
    _$GLoginWithPinData_loginWithPin,
  ];
  @override
  final String wireName = 'GLoginWithPinData_loginWithPin';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GLoginWithPinData_loginWithPin object, {
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
            specifiedType: const FullType(GLoginWithPinData_loginWithPin_user),
          ),
        );
    }
    return result;
  }

  @override
  GLoginWithPinData_loginWithPin deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GLoginWithPinData_loginWithPinBuilder();

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
                    GLoginWithPinData_loginWithPin_user,
                  ),
                )!
                as GLoginWithPinData_loginWithPin_user,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginWithPinData_loginWithPin_userSerializer
    implements StructuredSerializer<GLoginWithPinData_loginWithPin_user> {
  @override
  final Iterable<Type> types = const [
    GLoginWithPinData_loginWithPin_user,
    _$GLoginWithPinData_loginWithPin_user,
  ];
  @override
  final String wireName = 'GLoginWithPinData_loginWithPin_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GLoginWithPinData_loginWithPin_user object, {
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
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginWithPinData_loginWithPin_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GLoginWithPinData_loginWithPin_userBuilder();

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

class _$GResetPinDataSerializer implements StructuredSerializer<GResetPinData> {
  @override
  final Iterable<Type> types = const [GResetPinData, _$GResetPinData];
  @override
  final String wireName = 'GResetPinData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GResetPinData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'resetPin',
      serializers.serialize(
        object.resetPin,
        specifiedType: const FullType(GResetPinData_resetPin),
      ),
    ];

    return result;
  }

  @override
  GResetPinData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GResetPinDataBuilder();

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
        case 'resetPin':
          result.resetPin.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GResetPinData_resetPin),
                )!
                as GResetPinData_resetPin,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GResetPinData_resetPinSerializer
    implements StructuredSerializer<GResetPinData_resetPin> {
  @override
  final Iterable<Type> types = const [
    GResetPinData_resetPin,
    _$GResetPinData_resetPin,
  ];
  @override
  final String wireName = 'GResetPinData_resetPin';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GResetPinData_resetPin object, {
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
            specifiedType: const FullType(GResetPinData_resetPin_user),
          ),
        );
    }
    return result;
  }

  @override
  GResetPinData_resetPin deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GResetPinData_resetPinBuilder();

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
                  specifiedType: const FullType(GResetPinData_resetPin_user),
                )!
                as GResetPinData_resetPin_user,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GResetPinData_resetPin_userSerializer
    implements StructuredSerializer<GResetPinData_resetPin_user> {
  @override
  final Iterable<Type> types = const [
    GResetPinData_resetPin_user,
    _$GResetPinData_resetPin_user,
  ];
  @override
  final String wireName = 'GResetPinData_resetPin_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GResetPinData_resetPin_user object, {
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
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GResetPinData_resetPin_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GResetPinData_resetPin_userBuilder();

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

class _$GDisablePinDataSerializer
    implements StructuredSerializer<GDisablePinData> {
  @override
  final Iterable<Type> types = const [GDisablePinData, _$GDisablePinData];
  @override
  final String wireName = 'GDisablePinData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDisablePinData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'disablePin',
      serializers.serialize(
        object.disablePin,
        specifiedType: const FullType(GDisablePinData_disablePin),
      ),
    ];

    return result;
  }

  @override
  GDisablePinData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDisablePinDataBuilder();

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
        case 'disablePin':
          result.disablePin.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GDisablePinData_disablePin),
                )!
                as GDisablePinData_disablePin,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GDisablePinData_disablePinSerializer
    implements StructuredSerializer<GDisablePinData_disablePin> {
  @override
  final Iterable<Type> types = const [
    GDisablePinData_disablePin,
    _$GDisablePinData_disablePin,
  ];
  @override
  final String wireName = 'GDisablePinData_disablePin';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDisablePinData_disablePin object, {
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
            specifiedType: const FullType(GDisablePinData_disablePin_user),
          ),
        );
    }
    return result;
  }

  @override
  GDisablePinData_disablePin deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDisablePinData_disablePinBuilder();

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
                    GDisablePinData_disablePin_user,
                  ),
                )!
                as GDisablePinData_disablePin_user,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GDisablePinData_disablePin_userSerializer
    implements StructuredSerializer<GDisablePinData_disablePin_user> {
  @override
  final Iterable<Type> types = const [
    GDisablePinData_disablePin_user,
    _$GDisablePinData_disablePin_user,
  ];
  @override
  final String wireName = 'GDisablePinData_disablePin_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDisablePinData_disablePin_user object, {
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
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.setUserPin;
    if (value != null) {
      result
        ..add('setUserPin')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(bool)),
        );
    }
    return result;
  }

  @override
  GDisablePinData_disablePin_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDisablePinData_disablePin_userBuilder();

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
        case 'auth':
          result.auth =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'setUserPin':
          result.setUserPin =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GActivatePinDataSerializer
    implements StructuredSerializer<GActivatePinData> {
  @override
  final Iterable<Type> types = const [GActivatePinData, _$GActivatePinData];
  @override
  final String wireName = 'GActivatePinData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GActivatePinData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'activatePin',
      serializers.serialize(
        object.activatePin,
        specifiedType: const FullType(GActivatePinData_activatePin),
      ),
    ];

    return result;
  }

  @override
  GActivatePinData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GActivatePinDataBuilder();

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
        case 'activatePin':
          result.activatePin.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GActivatePinData_activatePin),
                )!
                as GActivatePinData_activatePin,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GActivatePinData_activatePinSerializer
    implements StructuredSerializer<GActivatePinData_activatePin> {
  @override
  final Iterable<Type> types = const [
    GActivatePinData_activatePin,
    _$GActivatePinData_activatePin,
  ];
  @override
  final String wireName = 'GActivatePinData_activatePin';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GActivatePinData_activatePin object, {
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
            specifiedType: const FullType(GActivatePinData_activatePin_user),
          ),
        );
    }
    return result;
  }

  @override
  GActivatePinData_activatePin deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GActivatePinData_activatePinBuilder();

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
                    GActivatePinData_activatePin_user,
                  ),
                )!
                as GActivatePinData_activatePin_user,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GActivatePinData_activatePin_userSerializer
    implements StructuredSerializer<GActivatePinData_activatePin_user> {
  @override
  final Iterable<Type> types = const [
    GActivatePinData_activatePin_user,
    _$GActivatePinData_activatePin_user,
  ];
  @override
  final String wireName = 'GActivatePinData_activatePin_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GActivatePinData_activatePin_user object, {
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
      'auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.setUserPin;
    if (value != null) {
      result
        ..add('setUserPin')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(bool)),
        );
    }
    return result;
  }

  @override
  GActivatePinData_activatePin_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GActivatePinData_activatePin_userBuilder();

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
        case 'auth':
          result.auth =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'setUserPin':
          result.setUserPin =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GVerifyPinStatusDataSerializer
    implements StructuredSerializer<GVerifyPinStatusData> {
  @override
  final Iterable<Type> types = const [
    GVerifyPinStatusData,
    _$GVerifyPinStatusData,
  ];
  @override
  final String wireName = 'GVerifyPinStatusData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GVerifyPinStatusData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'verifyPinStatus',
      serializers.serialize(
        object.verifyPinStatus,
        specifiedType: const FullType(GVerifyPinStatusData_verifyPinStatus),
      ),
    ];

    return result;
  }

  @override
  GVerifyPinStatusData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GVerifyPinStatusDataBuilder();

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
        case 'verifyPinStatus':
          result.verifyPinStatus.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GVerifyPinStatusData_verifyPinStatus,
                  ),
                )!
                as GVerifyPinStatusData_verifyPinStatus,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GVerifyPinStatusData_verifyPinStatusSerializer
    implements StructuredSerializer<GVerifyPinStatusData_verifyPinStatus> {
  @override
  final Iterable<Type> types = const [
    GVerifyPinStatusData_verifyPinStatus,
    _$GVerifyPinStatusData_verifyPinStatus,
  ];
  @override
  final String wireName = 'GVerifyPinStatusData_verifyPinStatus';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GVerifyPinStatusData_verifyPinStatus object, {
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
      'pinStatus',
      serializers.serialize(
        object.pinStatus,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.setUserPin;
    if (value != null) {
      result
        ..add('setUserPin')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(bool)),
        );
    }
    return result;
  }

  @override
  GVerifyPinStatusData_verifyPinStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GVerifyPinStatusData_verifyPinStatusBuilder();

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
        case 'pinStatus':
          result.pinStatus =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'setUserPin':
          result.setUserPin =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSetPinData extends GSetPinData {
  @override
  final String G__typename;
  @override
  final GSetPinData_setPin setPin;

  factory _$GSetPinData([void Function(GSetPinDataBuilder)? updates]) =>
      (GSetPinDataBuilder()..update(updates))._build();

  _$GSetPinData._({required this.G__typename, required this.setPin})
    : super._();
  @override
  GSetPinData rebuild(void Function(GSetPinDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSetPinDataBuilder toBuilder() => GSetPinDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSetPinData &&
        G__typename == other.G__typename &&
        setPin == other.setPin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, setPin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSetPinData')
          ..add('G__typename', G__typename)
          ..add('setPin', setPin))
        .toString();
  }
}

class GSetPinDataBuilder implements Builder<GSetPinData, GSetPinDataBuilder> {
  _$GSetPinData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSetPinData_setPinBuilder? _setPin;
  GSetPinData_setPinBuilder get setPin =>
      _$this._setPin ??= GSetPinData_setPinBuilder();
  set setPin(GSetPinData_setPinBuilder? setPin) => _$this._setPin = setPin;

  GSetPinDataBuilder() {
    GSetPinData._initializeBuilder(this);
  }

  GSetPinDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _setPin = $v.setPin.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSetPinData other) {
    _$v = other as _$GSetPinData;
  }

  @override
  void update(void Function(GSetPinDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSetPinData build() => _build();

  _$GSetPinData _build() {
    _$GSetPinData _$result;
    try {
      _$result =
          _$v ??
          _$GSetPinData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GSetPinData',
              'G__typename',
            ),
            setPin: setPin.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'setPin';
        setPin.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GSetPinData',
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

class _$GSetPinData_setPin extends GSetPinData_setPin {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final GSetPinData_setPin_user? user;

  factory _$GSetPinData_setPin([
    void Function(GSetPinData_setPinBuilder)? updates,
  ]) => (GSetPinData_setPinBuilder()..update(updates))._build();

  _$GSetPinData_setPin._({
    required this.G__typename,
    required this.status,
    required this.message,
    this.user,
  }) : super._();
  @override
  GSetPinData_setPin rebuild(
    void Function(GSetPinData_setPinBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GSetPinData_setPinBuilder toBuilder() =>
      GSetPinData_setPinBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSetPinData_setPin &&
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
    return (newBuiltValueToStringHelper(r'GSetPinData_setPin')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class GSetPinData_setPinBuilder
    implements Builder<GSetPinData_setPin, GSetPinData_setPinBuilder> {
  _$GSetPinData_setPin? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GSetPinData_setPin_userBuilder? _user;
  GSetPinData_setPin_userBuilder get user =>
      _$this._user ??= GSetPinData_setPin_userBuilder();
  set user(GSetPinData_setPin_userBuilder? user) => _$this._user = user;

  GSetPinData_setPinBuilder() {
    GSetPinData_setPin._initializeBuilder(this);
  }

  GSetPinData_setPinBuilder get _$this {
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
  void replace(GSetPinData_setPin other) {
    _$v = other as _$GSetPinData_setPin;
  }

  @override
  void update(void Function(GSetPinData_setPinBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSetPinData_setPin build() => _build();

  _$GSetPinData_setPin _build() {
    _$GSetPinData_setPin _$result;
    try {
      _$result =
          _$v ??
          _$GSetPinData_setPin._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GSetPinData_setPin',
              'G__typename',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GSetPinData_setPin',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GSetPinData_setPin',
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
          r'GSetPinData_setPin',
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

class _$GSetPinData_setPin_user extends GSetPinData_setPin_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String auth;
  @override
  final bool? setUserPin;

  factory _$GSetPinData_setPin_user([
    void Function(GSetPinData_setPin_userBuilder)? updates,
  ]) => (GSetPinData_setPin_userBuilder()..update(updates))._build();

  _$GSetPinData_setPin_user._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.auth,
    this.setUserPin,
  }) : super._();
  @override
  GSetPinData_setPin_user rebuild(
    void Function(GSetPinData_setPin_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GSetPinData_setPin_userBuilder toBuilder() =>
      GSetPinData_setPin_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSetPinData_setPin_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        auth == other.auth &&
        setUserPin == other.setUserPin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, setUserPin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSetPinData_setPin_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('auth', auth)
          ..add('setUserPin', setUserPin))
        .toString();
  }
}

class GSetPinData_setPin_userBuilder
    implements
        Builder<GSetPinData_setPin_user, GSetPinData_setPin_userBuilder> {
  _$GSetPinData_setPin_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  bool? _setUserPin;
  bool? get setUserPin => _$this._setUserPin;
  set setUserPin(bool? setUserPin) => _$this._setUserPin = setUserPin;

  GSetPinData_setPin_userBuilder() {
    GSetPinData_setPin_user._initializeBuilder(this);
  }

  GSetPinData_setPin_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _auth = $v.auth;
      _setUserPin = $v.setUserPin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSetPinData_setPin_user other) {
    _$v = other as _$GSetPinData_setPin_user;
  }

  @override
  void update(void Function(GSetPinData_setPin_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSetPinData_setPin_user build() => _build();

  _$GSetPinData_setPin_user _build() {
    final _$result =
        _$v ??
        _$GSetPinData_setPin_user._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GSetPinData_setPin_user',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GSetPinData_setPin_user',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GSetPinData_setPin_user',
            'name',
          ),
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GSetPinData_setPin_user',
            'auth',
          ),
          setUserPin: setUserPin,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GLoginWithPinData extends GLoginWithPinData {
  @override
  final String G__typename;
  @override
  final GLoginWithPinData_loginWithPin loginWithPin;

  factory _$GLoginWithPinData([
    void Function(GLoginWithPinDataBuilder)? updates,
  ]) => (GLoginWithPinDataBuilder()..update(updates))._build();

  _$GLoginWithPinData._({required this.G__typename, required this.loginWithPin})
    : super._();
  @override
  GLoginWithPinData rebuild(void Function(GLoginWithPinDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginWithPinDataBuilder toBuilder() =>
      GLoginWithPinDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginWithPinData &&
        G__typename == other.G__typename &&
        loginWithPin == other.loginWithPin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, loginWithPin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginWithPinData')
          ..add('G__typename', G__typename)
          ..add('loginWithPin', loginWithPin))
        .toString();
  }
}

class GLoginWithPinDataBuilder
    implements Builder<GLoginWithPinData, GLoginWithPinDataBuilder> {
  _$GLoginWithPinData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLoginWithPinData_loginWithPinBuilder? _loginWithPin;
  GLoginWithPinData_loginWithPinBuilder get loginWithPin =>
      _$this._loginWithPin ??= GLoginWithPinData_loginWithPinBuilder();
  set loginWithPin(GLoginWithPinData_loginWithPinBuilder? loginWithPin) =>
      _$this._loginWithPin = loginWithPin;

  GLoginWithPinDataBuilder() {
    GLoginWithPinData._initializeBuilder(this);
  }

  GLoginWithPinDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _loginWithPin = $v.loginWithPin.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginWithPinData other) {
    _$v = other as _$GLoginWithPinData;
  }

  @override
  void update(void Function(GLoginWithPinDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginWithPinData build() => _build();

  _$GLoginWithPinData _build() {
    _$GLoginWithPinData _$result;
    try {
      _$result =
          _$v ??
          _$GLoginWithPinData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GLoginWithPinData',
              'G__typename',
            ),
            loginWithPin: loginWithPin.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loginWithPin';
        loginWithPin.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GLoginWithPinData',
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

class _$GLoginWithPinData_loginWithPin extends GLoginWithPinData_loginWithPin {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final GLoginWithPinData_loginWithPin_user? user;

  factory _$GLoginWithPinData_loginWithPin([
    void Function(GLoginWithPinData_loginWithPinBuilder)? updates,
  ]) => (GLoginWithPinData_loginWithPinBuilder()..update(updates))._build();

  _$GLoginWithPinData_loginWithPin._({
    required this.G__typename,
    required this.status,
    required this.message,
    this.user,
  }) : super._();
  @override
  GLoginWithPinData_loginWithPin rebuild(
    void Function(GLoginWithPinData_loginWithPinBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GLoginWithPinData_loginWithPinBuilder toBuilder() =>
      GLoginWithPinData_loginWithPinBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginWithPinData_loginWithPin &&
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
    return (newBuiltValueToStringHelper(r'GLoginWithPinData_loginWithPin')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class GLoginWithPinData_loginWithPinBuilder
    implements
        Builder<
          GLoginWithPinData_loginWithPin,
          GLoginWithPinData_loginWithPinBuilder
        > {
  _$GLoginWithPinData_loginWithPin? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GLoginWithPinData_loginWithPin_userBuilder? _user;
  GLoginWithPinData_loginWithPin_userBuilder get user =>
      _$this._user ??= GLoginWithPinData_loginWithPin_userBuilder();
  set user(GLoginWithPinData_loginWithPin_userBuilder? user) =>
      _$this._user = user;

  GLoginWithPinData_loginWithPinBuilder() {
    GLoginWithPinData_loginWithPin._initializeBuilder(this);
  }

  GLoginWithPinData_loginWithPinBuilder get _$this {
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
  void replace(GLoginWithPinData_loginWithPin other) {
    _$v = other as _$GLoginWithPinData_loginWithPin;
  }

  @override
  void update(void Function(GLoginWithPinData_loginWithPinBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginWithPinData_loginWithPin build() => _build();

  _$GLoginWithPinData_loginWithPin _build() {
    _$GLoginWithPinData_loginWithPin _$result;
    try {
      _$result =
          _$v ??
          _$GLoginWithPinData_loginWithPin._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GLoginWithPinData_loginWithPin',
              'G__typename',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GLoginWithPinData_loginWithPin',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GLoginWithPinData_loginWithPin',
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
          r'GLoginWithPinData_loginWithPin',
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

class _$GLoginWithPinData_loginWithPin_user
    extends GLoginWithPinData_loginWithPin_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String auth;

  factory _$GLoginWithPinData_loginWithPin_user([
    void Function(GLoginWithPinData_loginWithPin_userBuilder)? updates,
  ]) =>
      (GLoginWithPinData_loginWithPin_userBuilder()..update(updates))._build();

  _$GLoginWithPinData_loginWithPin_user._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.auth,
  }) : super._();
  @override
  GLoginWithPinData_loginWithPin_user rebuild(
    void Function(GLoginWithPinData_loginWithPin_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GLoginWithPinData_loginWithPin_userBuilder toBuilder() =>
      GLoginWithPinData_loginWithPin_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginWithPinData_loginWithPin_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        auth == other.auth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginWithPinData_loginWithPin_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('auth', auth))
        .toString();
  }
}

class GLoginWithPinData_loginWithPin_userBuilder
    implements
        Builder<
          GLoginWithPinData_loginWithPin_user,
          GLoginWithPinData_loginWithPin_userBuilder
        > {
  _$GLoginWithPinData_loginWithPin_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  GLoginWithPinData_loginWithPin_userBuilder() {
    GLoginWithPinData_loginWithPin_user._initializeBuilder(this);
  }

  GLoginWithPinData_loginWithPin_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginWithPinData_loginWithPin_user other) {
    _$v = other as _$GLoginWithPinData_loginWithPin_user;
  }

  @override
  void update(
    void Function(GLoginWithPinData_loginWithPin_userBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GLoginWithPinData_loginWithPin_user build() => _build();

  _$GLoginWithPinData_loginWithPin_user _build() {
    final _$result =
        _$v ??
        _$GLoginWithPinData_loginWithPin_user._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GLoginWithPinData_loginWithPin_user',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GLoginWithPinData_loginWithPin_user',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GLoginWithPinData_loginWithPin_user',
            'name',
          ),
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GLoginWithPinData_loginWithPin_user',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GResetPinData extends GResetPinData {
  @override
  final String G__typename;
  @override
  final GResetPinData_resetPin resetPin;

  factory _$GResetPinData([void Function(GResetPinDataBuilder)? updates]) =>
      (GResetPinDataBuilder()..update(updates))._build();

  _$GResetPinData._({required this.G__typename, required this.resetPin})
    : super._();
  @override
  GResetPinData rebuild(void Function(GResetPinDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GResetPinDataBuilder toBuilder() => GResetPinDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GResetPinData &&
        G__typename == other.G__typename &&
        resetPin == other.resetPin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, resetPin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GResetPinData')
          ..add('G__typename', G__typename)
          ..add('resetPin', resetPin))
        .toString();
  }
}

class GResetPinDataBuilder
    implements Builder<GResetPinData, GResetPinDataBuilder> {
  _$GResetPinData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GResetPinData_resetPinBuilder? _resetPin;
  GResetPinData_resetPinBuilder get resetPin =>
      _$this._resetPin ??= GResetPinData_resetPinBuilder();
  set resetPin(GResetPinData_resetPinBuilder? resetPin) =>
      _$this._resetPin = resetPin;

  GResetPinDataBuilder() {
    GResetPinData._initializeBuilder(this);
  }

  GResetPinDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _resetPin = $v.resetPin.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GResetPinData other) {
    _$v = other as _$GResetPinData;
  }

  @override
  void update(void Function(GResetPinDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GResetPinData build() => _build();

  _$GResetPinData _build() {
    _$GResetPinData _$result;
    try {
      _$result =
          _$v ??
          _$GResetPinData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GResetPinData',
              'G__typename',
            ),
            resetPin: resetPin.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resetPin';
        resetPin.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GResetPinData',
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

class _$GResetPinData_resetPin extends GResetPinData_resetPin {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final GResetPinData_resetPin_user? user;

  factory _$GResetPinData_resetPin([
    void Function(GResetPinData_resetPinBuilder)? updates,
  ]) => (GResetPinData_resetPinBuilder()..update(updates))._build();

  _$GResetPinData_resetPin._({
    required this.G__typename,
    required this.status,
    required this.message,
    this.user,
  }) : super._();
  @override
  GResetPinData_resetPin rebuild(
    void Function(GResetPinData_resetPinBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GResetPinData_resetPinBuilder toBuilder() =>
      GResetPinData_resetPinBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GResetPinData_resetPin &&
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
    return (newBuiltValueToStringHelper(r'GResetPinData_resetPin')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class GResetPinData_resetPinBuilder
    implements Builder<GResetPinData_resetPin, GResetPinData_resetPinBuilder> {
  _$GResetPinData_resetPin? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GResetPinData_resetPin_userBuilder? _user;
  GResetPinData_resetPin_userBuilder get user =>
      _$this._user ??= GResetPinData_resetPin_userBuilder();
  set user(GResetPinData_resetPin_userBuilder? user) => _$this._user = user;

  GResetPinData_resetPinBuilder() {
    GResetPinData_resetPin._initializeBuilder(this);
  }

  GResetPinData_resetPinBuilder get _$this {
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
  void replace(GResetPinData_resetPin other) {
    _$v = other as _$GResetPinData_resetPin;
  }

  @override
  void update(void Function(GResetPinData_resetPinBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GResetPinData_resetPin build() => _build();

  _$GResetPinData_resetPin _build() {
    _$GResetPinData_resetPin _$result;
    try {
      _$result =
          _$v ??
          _$GResetPinData_resetPin._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GResetPinData_resetPin',
              'G__typename',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GResetPinData_resetPin',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GResetPinData_resetPin',
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
          r'GResetPinData_resetPin',
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

class _$GResetPinData_resetPin_user extends GResetPinData_resetPin_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String auth;

  factory _$GResetPinData_resetPin_user([
    void Function(GResetPinData_resetPin_userBuilder)? updates,
  ]) => (GResetPinData_resetPin_userBuilder()..update(updates))._build();

  _$GResetPinData_resetPin_user._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.auth,
  }) : super._();
  @override
  GResetPinData_resetPin_user rebuild(
    void Function(GResetPinData_resetPin_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GResetPinData_resetPin_userBuilder toBuilder() =>
      GResetPinData_resetPin_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GResetPinData_resetPin_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        auth == other.auth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GResetPinData_resetPin_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('auth', auth))
        .toString();
  }
}

class GResetPinData_resetPin_userBuilder
    implements
        Builder<
          GResetPinData_resetPin_user,
          GResetPinData_resetPin_userBuilder
        > {
  _$GResetPinData_resetPin_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  GResetPinData_resetPin_userBuilder() {
    GResetPinData_resetPin_user._initializeBuilder(this);
  }

  GResetPinData_resetPin_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GResetPinData_resetPin_user other) {
    _$v = other as _$GResetPinData_resetPin_user;
  }

  @override
  void update(void Function(GResetPinData_resetPin_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GResetPinData_resetPin_user build() => _build();

  _$GResetPinData_resetPin_user _build() {
    final _$result =
        _$v ??
        _$GResetPinData_resetPin_user._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GResetPinData_resetPin_user',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GResetPinData_resetPin_user',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GResetPinData_resetPin_user',
            'name',
          ),
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GResetPinData_resetPin_user',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GDisablePinData extends GDisablePinData {
  @override
  final String G__typename;
  @override
  final GDisablePinData_disablePin disablePin;

  factory _$GDisablePinData([void Function(GDisablePinDataBuilder)? updates]) =>
      (GDisablePinDataBuilder()..update(updates))._build();

  _$GDisablePinData._({required this.G__typename, required this.disablePin})
    : super._();
  @override
  GDisablePinData rebuild(void Function(GDisablePinDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDisablePinDataBuilder toBuilder() => GDisablePinDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDisablePinData &&
        G__typename == other.G__typename &&
        disablePin == other.disablePin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, disablePin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDisablePinData')
          ..add('G__typename', G__typename)
          ..add('disablePin', disablePin))
        .toString();
  }
}

class GDisablePinDataBuilder
    implements Builder<GDisablePinData, GDisablePinDataBuilder> {
  _$GDisablePinData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDisablePinData_disablePinBuilder? _disablePin;
  GDisablePinData_disablePinBuilder get disablePin =>
      _$this._disablePin ??= GDisablePinData_disablePinBuilder();
  set disablePin(GDisablePinData_disablePinBuilder? disablePin) =>
      _$this._disablePin = disablePin;

  GDisablePinDataBuilder() {
    GDisablePinData._initializeBuilder(this);
  }

  GDisablePinDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _disablePin = $v.disablePin.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDisablePinData other) {
    _$v = other as _$GDisablePinData;
  }

  @override
  void update(void Function(GDisablePinDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDisablePinData build() => _build();

  _$GDisablePinData _build() {
    _$GDisablePinData _$result;
    try {
      _$result =
          _$v ??
          _$GDisablePinData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GDisablePinData',
              'G__typename',
            ),
            disablePin: disablePin.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disablePin';
        disablePin.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GDisablePinData',
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

class _$GDisablePinData_disablePin extends GDisablePinData_disablePin {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final GDisablePinData_disablePin_user? user;

  factory _$GDisablePinData_disablePin([
    void Function(GDisablePinData_disablePinBuilder)? updates,
  ]) => (GDisablePinData_disablePinBuilder()..update(updates))._build();

  _$GDisablePinData_disablePin._({
    required this.G__typename,
    required this.status,
    required this.message,
    this.user,
  }) : super._();
  @override
  GDisablePinData_disablePin rebuild(
    void Function(GDisablePinData_disablePinBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GDisablePinData_disablePinBuilder toBuilder() =>
      GDisablePinData_disablePinBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDisablePinData_disablePin &&
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
    return (newBuiltValueToStringHelper(r'GDisablePinData_disablePin')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class GDisablePinData_disablePinBuilder
    implements
        Builder<GDisablePinData_disablePin, GDisablePinData_disablePinBuilder> {
  _$GDisablePinData_disablePin? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GDisablePinData_disablePin_userBuilder? _user;
  GDisablePinData_disablePin_userBuilder get user =>
      _$this._user ??= GDisablePinData_disablePin_userBuilder();
  set user(GDisablePinData_disablePin_userBuilder? user) => _$this._user = user;

  GDisablePinData_disablePinBuilder() {
    GDisablePinData_disablePin._initializeBuilder(this);
  }

  GDisablePinData_disablePinBuilder get _$this {
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
  void replace(GDisablePinData_disablePin other) {
    _$v = other as _$GDisablePinData_disablePin;
  }

  @override
  void update(void Function(GDisablePinData_disablePinBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDisablePinData_disablePin build() => _build();

  _$GDisablePinData_disablePin _build() {
    _$GDisablePinData_disablePin _$result;
    try {
      _$result =
          _$v ??
          _$GDisablePinData_disablePin._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GDisablePinData_disablePin',
              'G__typename',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GDisablePinData_disablePin',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GDisablePinData_disablePin',
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
          r'GDisablePinData_disablePin',
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

class _$GDisablePinData_disablePin_user
    extends GDisablePinData_disablePin_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String auth;
  @override
  final bool? setUserPin;

  factory _$GDisablePinData_disablePin_user([
    void Function(GDisablePinData_disablePin_userBuilder)? updates,
  ]) => (GDisablePinData_disablePin_userBuilder()..update(updates))._build();

  _$GDisablePinData_disablePin_user._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.auth,
    this.setUserPin,
  }) : super._();
  @override
  GDisablePinData_disablePin_user rebuild(
    void Function(GDisablePinData_disablePin_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GDisablePinData_disablePin_userBuilder toBuilder() =>
      GDisablePinData_disablePin_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDisablePinData_disablePin_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        auth == other.auth &&
        setUserPin == other.setUserPin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, setUserPin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDisablePinData_disablePin_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('auth', auth)
          ..add('setUserPin', setUserPin))
        .toString();
  }
}

class GDisablePinData_disablePin_userBuilder
    implements
        Builder<
          GDisablePinData_disablePin_user,
          GDisablePinData_disablePin_userBuilder
        > {
  _$GDisablePinData_disablePin_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  bool? _setUserPin;
  bool? get setUserPin => _$this._setUserPin;
  set setUserPin(bool? setUserPin) => _$this._setUserPin = setUserPin;

  GDisablePinData_disablePin_userBuilder() {
    GDisablePinData_disablePin_user._initializeBuilder(this);
  }

  GDisablePinData_disablePin_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _auth = $v.auth;
      _setUserPin = $v.setUserPin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDisablePinData_disablePin_user other) {
    _$v = other as _$GDisablePinData_disablePin_user;
  }

  @override
  void update(void Function(GDisablePinData_disablePin_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDisablePinData_disablePin_user build() => _build();

  _$GDisablePinData_disablePin_user _build() {
    final _$result =
        _$v ??
        _$GDisablePinData_disablePin_user._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GDisablePinData_disablePin_user',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GDisablePinData_disablePin_user',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GDisablePinData_disablePin_user',
            'name',
          ),
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GDisablePinData_disablePin_user',
            'auth',
          ),
          setUserPin: setUserPin,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GActivatePinData extends GActivatePinData {
  @override
  final String G__typename;
  @override
  final GActivatePinData_activatePin activatePin;

  factory _$GActivatePinData([
    void Function(GActivatePinDataBuilder)? updates,
  ]) => (GActivatePinDataBuilder()..update(updates))._build();

  _$GActivatePinData._({required this.G__typename, required this.activatePin})
    : super._();
  @override
  GActivatePinData rebuild(void Function(GActivatePinDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivatePinDataBuilder toBuilder() =>
      GActivatePinDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivatePinData &&
        G__typename == other.G__typename &&
        activatePin == other.activatePin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, activatePin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GActivatePinData')
          ..add('G__typename', G__typename)
          ..add('activatePin', activatePin))
        .toString();
  }
}

class GActivatePinDataBuilder
    implements Builder<GActivatePinData, GActivatePinDataBuilder> {
  _$GActivatePinData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GActivatePinData_activatePinBuilder? _activatePin;
  GActivatePinData_activatePinBuilder get activatePin =>
      _$this._activatePin ??= GActivatePinData_activatePinBuilder();
  set activatePin(GActivatePinData_activatePinBuilder? activatePin) =>
      _$this._activatePin = activatePin;

  GActivatePinDataBuilder() {
    GActivatePinData._initializeBuilder(this);
  }

  GActivatePinDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _activatePin = $v.activatePin.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivatePinData other) {
    _$v = other as _$GActivatePinData;
  }

  @override
  void update(void Function(GActivatePinDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivatePinData build() => _build();

  _$GActivatePinData _build() {
    _$GActivatePinData _$result;
    try {
      _$result =
          _$v ??
          _$GActivatePinData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GActivatePinData',
              'G__typename',
            ),
            activatePin: activatePin.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activatePin';
        activatePin.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GActivatePinData',
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

class _$GActivatePinData_activatePin extends GActivatePinData_activatePin {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final GActivatePinData_activatePin_user? user;

  factory _$GActivatePinData_activatePin([
    void Function(GActivatePinData_activatePinBuilder)? updates,
  ]) => (GActivatePinData_activatePinBuilder()..update(updates))._build();

  _$GActivatePinData_activatePin._({
    required this.G__typename,
    required this.status,
    required this.message,
    this.user,
  }) : super._();
  @override
  GActivatePinData_activatePin rebuild(
    void Function(GActivatePinData_activatePinBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GActivatePinData_activatePinBuilder toBuilder() =>
      GActivatePinData_activatePinBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivatePinData_activatePin &&
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
    return (newBuiltValueToStringHelper(r'GActivatePinData_activatePin')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class GActivatePinData_activatePinBuilder
    implements
        Builder<
          GActivatePinData_activatePin,
          GActivatePinData_activatePinBuilder
        > {
  _$GActivatePinData_activatePin? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GActivatePinData_activatePin_userBuilder? _user;
  GActivatePinData_activatePin_userBuilder get user =>
      _$this._user ??= GActivatePinData_activatePin_userBuilder();
  set user(GActivatePinData_activatePin_userBuilder? user) =>
      _$this._user = user;

  GActivatePinData_activatePinBuilder() {
    GActivatePinData_activatePin._initializeBuilder(this);
  }

  GActivatePinData_activatePinBuilder get _$this {
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
  void replace(GActivatePinData_activatePin other) {
    _$v = other as _$GActivatePinData_activatePin;
  }

  @override
  void update(void Function(GActivatePinData_activatePinBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivatePinData_activatePin build() => _build();

  _$GActivatePinData_activatePin _build() {
    _$GActivatePinData_activatePin _$result;
    try {
      _$result =
          _$v ??
          _$GActivatePinData_activatePin._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GActivatePinData_activatePin',
              'G__typename',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GActivatePinData_activatePin',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GActivatePinData_activatePin',
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
          r'GActivatePinData_activatePin',
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

class _$GActivatePinData_activatePin_user
    extends GActivatePinData_activatePin_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String auth;
  @override
  final bool? setUserPin;

  factory _$GActivatePinData_activatePin_user([
    void Function(GActivatePinData_activatePin_userBuilder)? updates,
  ]) => (GActivatePinData_activatePin_userBuilder()..update(updates))._build();

  _$GActivatePinData_activatePin_user._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.auth,
    this.setUserPin,
  }) : super._();
  @override
  GActivatePinData_activatePin_user rebuild(
    void Function(GActivatePinData_activatePin_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GActivatePinData_activatePin_userBuilder toBuilder() =>
      GActivatePinData_activatePin_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivatePinData_activatePin_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        auth == other.auth &&
        setUserPin == other.setUserPin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, setUserPin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GActivatePinData_activatePin_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('auth', auth)
          ..add('setUserPin', setUserPin))
        .toString();
  }
}

class GActivatePinData_activatePin_userBuilder
    implements
        Builder<
          GActivatePinData_activatePin_user,
          GActivatePinData_activatePin_userBuilder
        > {
  _$GActivatePinData_activatePin_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  bool? _setUserPin;
  bool? get setUserPin => _$this._setUserPin;
  set setUserPin(bool? setUserPin) => _$this._setUserPin = setUserPin;

  GActivatePinData_activatePin_userBuilder() {
    GActivatePinData_activatePin_user._initializeBuilder(this);
  }

  GActivatePinData_activatePin_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _auth = $v.auth;
      _setUserPin = $v.setUserPin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivatePinData_activatePin_user other) {
    _$v = other as _$GActivatePinData_activatePin_user;
  }

  @override
  void update(
    void Function(GActivatePinData_activatePin_userBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GActivatePinData_activatePin_user build() => _build();

  _$GActivatePinData_activatePin_user _build() {
    final _$result =
        _$v ??
        _$GActivatePinData_activatePin_user._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GActivatePinData_activatePin_user',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GActivatePinData_activatePin_user',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GActivatePinData_activatePin_user',
            'name',
          ),
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'GActivatePinData_activatePin_user',
            'auth',
          ),
          setUserPin: setUserPin,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GVerifyPinStatusData extends GVerifyPinStatusData {
  @override
  final String G__typename;
  @override
  final GVerifyPinStatusData_verifyPinStatus verifyPinStatus;

  factory _$GVerifyPinStatusData([
    void Function(GVerifyPinStatusDataBuilder)? updates,
  ]) => (GVerifyPinStatusDataBuilder()..update(updates))._build();

  _$GVerifyPinStatusData._({
    required this.G__typename,
    required this.verifyPinStatus,
  }) : super._();
  @override
  GVerifyPinStatusData rebuild(
    void Function(GVerifyPinStatusDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GVerifyPinStatusDataBuilder toBuilder() =>
      GVerifyPinStatusDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVerifyPinStatusData &&
        G__typename == other.G__typename &&
        verifyPinStatus == other.verifyPinStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, verifyPinStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVerifyPinStatusData')
          ..add('G__typename', G__typename)
          ..add('verifyPinStatus', verifyPinStatus))
        .toString();
  }
}

class GVerifyPinStatusDataBuilder
    implements Builder<GVerifyPinStatusData, GVerifyPinStatusDataBuilder> {
  _$GVerifyPinStatusData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GVerifyPinStatusData_verifyPinStatusBuilder? _verifyPinStatus;
  GVerifyPinStatusData_verifyPinStatusBuilder get verifyPinStatus =>
      _$this._verifyPinStatus ??= GVerifyPinStatusData_verifyPinStatusBuilder();
  set verifyPinStatus(
    GVerifyPinStatusData_verifyPinStatusBuilder? verifyPinStatus,
  ) => _$this._verifyPinStatus = verifyPinStatus;

  GVerifyPinStatusDataBuilder() {
    GVerifyPinStatusData._initializeBuilder(this);
  }

  GVerifyPinStatusDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _verifyPinStatus = $v.verifyPinStatus.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVerifyPinStatusData other) {
    _$v = other as _$GVerifyPinStatusData;
  }

  @override
  void update(void Function(GVerifyPinStatusDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVerifyPinStatusData build() => _build();

  _$GVerifyPinStatusData _build() {
    _$GVerifyPinStatusData _$result;
    try {
      _$result =
          _$v ??
          _$GVerifyPinStatusData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GVerifyPinStatusData',
              'G__typename',
            ),
            verifyPinStatus: verifyPinStatus.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifyPinStatus';
        verifyPinStatus.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GVerifyPinStatusData',
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

class _$GVerifyPinStatusData_verifyPinStatus
    extends GVerifyPinStatusData_verifyPinStatus {
  @override
  final String G__typename;
  @override
  final int status;
  @override
  final String message;
  @override
  final String pinStatus;
  @override
  final bool? setUserPin;

  factory _$GVerifyPinStatusData_verifyPinStatus([
    void Function(GVerifyPinStatusData_verifyPinStatusBuilder)? updates,
  ]) =>
      (GVerifyPinStatusData_verifyPinStatusBuilder()..update(updates))._build();

  _$GVerifyPinStatusData_verifyPinStatus._({
    required this.G__typename,
    required this.status,
    required this.message,
    required this.pinStatus,
    this.setUserPin,
  }) : super._();
  @override
  GVerifyPinStatusData_verifyPinStatus rebuild(
    void Function(GVerifyPinStatusData_verifyPinStatusBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GVerifyPinStatusData_verifyPinStatusBuilder toBuilder() =>
      GVerifyPinStatusData_verifyPinStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVerifyPinStatusData_verifyPinStatus &&
        G__typename == other.G__typename &&
        status == other.status &&
        message == other.message &&
        pinStatus == other.pinStatus &&
        setUserPin == other.setUserPin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, pinStatus.hashCode);
    _$hash = $jc(_$hash, setUserPin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVerifyPinStatusData_verifyPinStatus')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('pinStatus', pinStatus)
          ..add('setUserPin', setUserPin))
        .toString();
  }
}

class GVerifyPinStatusData_verifyPinStatusBuilder
    implements
        Builder<
          GVerifyPinStatusData_verifyPinStatus,
          GVerifyPinStatusData_verifyPinStatusBuilder
        > {
  _$GVerifyPinStatusData_verifyPinStatus? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _pinStatus;
  String? get pinStatus => _$this._pinStatus;
  set pinStatus(String? pinStatus) => _$this._pinStatus = pinStatus;

  bool? _setUserPin;
  bool? get setUserPin => _$this._setUserPin;
  set setUserPin(bool? setUserPin) => _$this._setUserPin = setUserPin;

  GVerifyPinStatusData_verifyPinStatusBuilder() {
    GVerifyPinStatusData_verifyPinStatus._initializeBuilder(this);
  }

  GVerifyPinStatusData_verifyPinStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _message = $v.message;
      _pinStatus = $v.pinStatus;
      _setUserPin = $v.setUserPin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVerifyPinStatusData_verifyPinStatus other) {
    _$v = other as _$GVerifyPinStatusData_verifyPinStatus;
  }

  @override
  void update(
    void Function(GVerifyPinStatusData_verifyPinStatusBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GVerifyPinStatusData_verifyPinStatus build() => _build();

  _$GVerifyPinStatusData_verifyPinStatus _build() {
    final _$result =
        _$v ??
        _$GVerifyPinStatusData_verifyPinStatus._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GVerifyPinStatusData_verifyPinStatus',
            'G__typename',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'GVerifyPinStatusData_verifyPinStatus',
            'status',
          ),
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'GVerifyPinStatusData_verifyPinStatus',
            'message',
          ),
          pinStatus: BuiltValueNullFieldError.checkNotNull(
            pinStatus,
            r'GVerifyPinStatusData_verifyPinStatus',
            'pinStatus',
          ),
          setUserPin: setUserPin,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
