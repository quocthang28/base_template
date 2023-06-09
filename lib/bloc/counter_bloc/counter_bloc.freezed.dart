// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() increaseButtonPressed,
    required TResult Function() decreaseButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? increaseButtonPressed,
    TResult? Function()? decreaseButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? increaseButtonPressed,
    TResult Function()? decreaseButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_IncreaseButtonPressed value)
        increaseButtonPressed,
    required TResult Function(_DecreaseButtonPressed value)
        decreaseButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_IncreaseButtonPressed value)? increaseButtonPressed,
    TResult? Function(_DecreaseButtonPressed value)? decreaseButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_IncreaseButtonPressed value)? increaseButtonPressed,
    TResult Function(_DecreaseButtonPressed value)? decreaseButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res, CounterEvent>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res, $Val extends CounterEvent>
    implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialEventCopyWith<$Res> {
  factory _$$_InitialEventCopyWith(
          _$_InitialEvent value, $Res Function(_$_InitialEvent) then) =
      __$$_InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialEventCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$_InitialEvent>
    implements _$$_InitialEventCopyWith<$Res> {
  __$$_InitialEventCopyWithImpl(
      _$_InitialEvent _value, $Res Function(_$_InitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent();

  @override
  String toString() {
    return 'CounterEvent.initialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() increaseButtonPressed,
    required TResult Function() decreaseButtonPressed,
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? increaseButtonPressed,
    TResult? Function()? decreaseButtonPressed,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? increaseButtonPressed,
    TResult Function()? decreaseButtonPressed,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_IncreaseButtonPressed value)
        increaseButtonPressed,
    required TResult Function(_DecreaseButtonPressed value)
        decreaseButtonPressed,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_IncreaseButtonPressed value)? increaseButtonPressed,
    TResult? Function(_DecreaseButtonPressed value)? decreaseButtonPressed,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_IncreaseButtonPressed value)? increaseButtonPressed,
    TResult Function(_DecreaseButtonPressed value)? decreaseButtonPressed,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements CounterEvent {
  const factory _InitialEvent() = _$_InitialEvent;
}

/// @nodoc
abstract class _$$_IncreaseButtonPressedCopyWith<$Res> {
  factory _$$_IncreaseButtonPressedCopyWith(_$_IncreaseButtonPressed value,
          $Res Function(_$_IncreaseButtonPressed) then) =
      __$$_IncreaseButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncreaseButtonPressedCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$_IncreaseButtonPressed>
    implements _$$_IncreaseButtonPressedCopyWith<$Res> {
  __$$_IncreaseButtonPressedCopyWithImpl(_$_IncreaseButtonPressed _value,
      $Res Function(_$_IncreaseButtonPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IncreaseButtonPressed implements _IncreaseButtonPressed {
  const _$_IncreaseButtonPressed();

  @override
  String toString() {
    return 'CounterEvent.increaseButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IncreaseButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() increaseButtonPressed,
    required TResult Function() decreaseButtonPressed,
  }) {
    return increaseButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? increaseButtonPressed,
    TResult? Function()? decreaseButtonPressed,
  }) {
    return increaseButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? increaseButtonPressed,
    TResult Function()? decreaseButtonPressed,
    required TResult orElse(),
  }) {
    if (increaseButtonPressed != null) {
      return increaseButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_IncreaseButtonPressed value)
        increaseButtonPressed,
    required TResult Function(_DecreaseButtonPressed value)
        decreaseButtonPressed,
  }) {
    return increaseButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_IncreaseButtonPressed value)? increaseButtonPressed,
    TResult? Function(_DecreaseButtonPressed value)? decreaseButtonPressed,
  }) {
    return increaseButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_IncreaseButtonPressed value)? increaseButtonPressed,
    TResult Function(_DecreaseButtonPressed value)? decreaseButtonPressed,
    required TResult orElse(),
  }) {
    if (increaseButtonPressed != null) {
      return increaseButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _IncreaseButtonPressed implements CounterEvent {
  const factory _IncreaseButtonPressed() = _$_IncreaseButtonPressed;
}

/// @nodoc
abstract class _$$_DecreaseButtonPressedCopyWith<$Res> {
  factory _$$_DecreaseButtonPressedCopyWith(_$_DecreaseButtonPressed value,
          $Res Function(_$_DecreaseButtonPressed) then) =
      __$$_DecreaseButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DecreaseButtonPressedCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$_DecreaseButtonPressed>
    implements _$$_DecreaseButtonPressedCopyWith<$Res> {
  __$$_DecreaseButtonPressedCopyWithImpl(_$_DecreaseButtonPressed _value,
      $Res Function(_$_DecreaseButtonPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DecreaseButtonPressed implements _DecreaseButtonPressed {
  const _$_DecreaseButtonPressed();

  @override
  String toString() {
    return 'CounterEvent.decreaseButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DecreaseButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() increaseButtonPressed,
    required TResult Function() decreaseButtonPressed,
  }) {
    return decreaseButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? increaseButtonPressed,
    TResult? Function()? decreaseButtonPressed,
  }) {
    return decreaseButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? increaseButtonPressed,
    TResult Function()? decreaseButtonPressed,
    required TResult orElse(),
  }) {
    if (decreaseButtonPressed != null) {
      return decreaseButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_IncreaseButtonPressed value)
        increaseButtonPressed,
    required TResult Function(_DecreaseButtonPressed value)
        decreaseButtonPressed,
  }) {
    return decreaseButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_IncreaseButtonPressed value)? increaseButtonPressed,
    TResult? Function(_DecreaseButtonPressed value)? decreaseButtonPressed,
  }) {
    return decreaseButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_IncreaseButtonPressed value)? increaseButtonPressed,
    TResult Function(_DecreaseButtonPressed value)? decreaseButtonPressed,
    required TResult orElse(),
  }) {
    if (decreaseButtonPressed != null) {
      return decreaseButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _DecreaseButtonPressed implements CounterEvent {
  const factory _DecreaseButtonPressed() = _$_DecreaseButtonPressed;
}

/// @nodoc
mixin _$CounterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(int newValue) numberIncreased,
    required TResult Function(int newValue) numberDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(int newValue)? numberIncreased,
    TResult? Function(int newValue)? numberDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(int newValue)? numberIncreased,
    TResult Function(int newValue)? numberDecreased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_NumberIncreased value) numberIncreased,
    required TResult Function(_NumberDecreased value) numberDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_NumberIncreased value)? numberIncreased,
    TResult? Function(_NumberDecreased value)? numberDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_NumberIncreased value)? numberIncreased,
    TResult Function(_NumberDecreased value)? numberDecreased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res, CounterState>;
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res, $Val extends CounterState>
    implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'CounterState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(int newValue) numberIncreased,
    required TResult Function(int newValue) numberDecreased,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(int newValue)? numberIncreased,
    TResult? Function(int newValue)? numberDecreased,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(int newValue)? numberIncreased,
    TResult Function(int newValue)? numberDecreased,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_NumberIncreased value) numberIncreased,
    required TResult Function(_NumberDecreased value) numberDecreased,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_NumberIncreased value)? numberIncreased,
    TResult? Function(_NumberDecreased value)? numberDecreased,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_NumberIncreased value)? numberIncreased,
    TResult Function(_NumberDecreased value)? numberDecreased,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements CounterState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_NumberIncreasedCopyWith<$Res> {
  factory _$$_NumberIncreasedCopyWith(
          _$_NumberIncreased value, $Res Function(_$_NumberIncreased) then) =
      __$$_NumberIncreasedCopyWithImpl<$Res>;
  @useResult
  $Res call({int newValue});
}

/// @nodoc
class __$$_NumberIncreasedCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$_NumberIncreased>
    implements _$$_NumberIncreasedCopyWith<$Res> {
  __$$_NumberIncreasedCopyWithImpl(
      _$_NumberIncreased _value, $Res Function(_$_NumberIncreased) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$_NumberIncreased(
      null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NumberIncreased implements _NumberIncreased {
  const _$_NumberIncreased(this.newValue);

  @override
  final int newValue;

  @override
  String toString() {
    return 'CounterState.numberIncreased(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberIncreased &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumberIncreasedCopyWith<_$_NumberIncreased> get copyWith =>
      __$$_NumberIncreasedCopyWithImpl<_$_NumberIncreased>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(int newValue) numberIncreased,
    required TResult Function(int newValue) numberDecreased,
  }) {
    return numberIncreased(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(int newValue)? numberIncreased,
    TResult? Function(int newValue)? numberDecreased,
  }) {
    return numberIncreased?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(int newValue)? numberIncreased,
    TResult Function(int newValue)? numberDecreased,
    required TResult orElse(),
  }) {
    if (numberIncreased != null) {
      return numberIncreased(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_NumberIncreased value) numberIncreased,
    required TResult Function(_NumberDecreased value) numberDecreased,
  }) {
    return numberIncreased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_NumberIncreased value)? numberIncreased,
    TResult? Function(_NumberDecreased value)? numberDecreased,
  }) {
    return numberIncreased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_NumberIncreased value)? numberIncreased,
    TResult Function(_NumberDecreased value)? numberDecreased,
    required TResult orElse(),
  }) {
    if (numberIncreased != null) {
      return numberIncreased(this);
    }
    return orElse();
  }
}

abstract class _NumberIncreased implements CounterState {
  const factory _NumberIncreased(final int newValue) = _$_NumberIncreased;

  int get newValue;
  @JsonKey(ignore: true)
  _$$_NumberIncreasedCopyWith<_$_NumberIncreased> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NumberDecreasedCopyWith<$Res> {
  factory _$$_NumberDecreasedCopyWith(
          _$_NumberDecreased value, $Res Function(_$_NumberDecreased) then) =
      __$$_NumberDecreasedCopyWithImpl<$Res>;
  @useResult
  $Res call({int newValue});
}

/// @nodoc
class __$$_NumberDecreasedCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$_NumberDecreased>
    implements _$$_NumberDecreasedCopyWith<$Res> {
  __$$_NumberDecreasedCopyWithImpl(
      _$_NumberDecreased _value, $Res Function(_$_NumberDecreased) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$_NumberDecreased(
      null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NumberDecreased implements _NumberDecreased {
  const _$_NumberDecreased(this.newValue);

  @override
  final int newValue;

  @override
  String toString() {
    return 'CounterState.numberDecreased(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberDecreased &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumberDecreasedCopyWith<_$_NumberDecreased> get copyWith =>
      __$$_NumberDecreasedCopyWithImpl<_$_NumberDecreased>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(int newValue) numberIncreased,
    required TResult Function(int newValue) numberDecreased,
  }) {
    return numberDecreased(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(int newValue)? numberIncreased,
    TResult? Function(int newValue)? numberDecreased,
  }) {
    return numberDecreased?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(int newValue)? numberIncreased,
    TResult Function(int newValue)? numberDecreased,
    required TResult orElse(),
  }) {
    if (numberDecreased != null) {
      return numberDecreased(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_NumberIncreased value) numberIncreased,
    required TResult Function(_NumberDecreased value) numberDecreased,
  }) {
    return numberDecreased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_NumberIncreased value)? numberIncreased,
    TResult? Function(_NumberDecreased value)? numberDecreased,
  }) {
    return numberDecreased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_NumberIncreased value)? numberIncreased,
    TResult Function(_NumberDecreased value)? numberDecreased,
    required TResult orElse(),
  }) {
    if (numberDecreased != null) {
      return numberDecreased(this);
    }
    return orElse();
  }
}

abstract class _NumberDecreased implements CounterState {
  const factory _NumberDecreased(final int newValue) = _$_NumberDecreased;

  int get newValue;
  @JsonKey(ignore: true)
  _$$_NumberDecreasedCopyWith<_$_NumberDecreased> get copyWith =>
      throw _privateConstructorUsedError;
}
