// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'another_todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnotherTodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnotherTodoEventCopyWith<$Res> {
  factory $AnotherTodoEventCopyWith(
          AnotherTodoEvent value, $Res Function(AnotherTodoEvent) then) =
      _$AnotherTodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnotherTodoEventCopyWithImpl<$Res>
    implements $AnotherTodoEventCopyWith<$Res> {
  _$AnotherTodoEventCopyWithImpl(this._value, this._then);

  final AnotherTodoEvent _value;
  // ignore: unused_field
  final $Res Function(AnotherTodoEvent) _then;
}

/// @nodoc
abstract class _$$_InitialEventCopyWith<$Res> {
  factory _$$_InitialEventCopyWith(
          _$_InitialEvent value, $Res Function(_$_InitialEvent) then) =
      __$$_InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialEventCopyWithImpl<$Res>
    extends _$AnotherTodoEventCopyWithImpl<$Res>
    implements _$$_InitialEventCopyWith<$Res> {
  __$$_InitialEventCopyWithImpl(
      _$_InitialEvent _value, $Res Function(_$_InitialEvent) _then)
      : super(_value, (v) => _then(v as _$_InitialEvent));

  @override
  _$_InitialEvent get _value => super._value as _$_InitialEvent;
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent();

  @override
  String toString() {
    return 'AnotherTodoEvent.initialEvent()';
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
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
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
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements AnotherTodoEvent {
  const factory _InitialEvent() = _$_InitialEvent;
}

/// @nodoc
mixin _$AnotherTodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() fetchingState,
    required TResult Function(List<Todo> todoList) todoAddedToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? todoAddedToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? todoAddedToList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_FetchingState value) fetchingState,
    required TResult Function(_TodoAddedToListState value) todoAddedToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_TodoAddedToListState value)? todoAddedToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_TodoAddedToListState value)? todoAddedToList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnotherTodoStateCopyWith<$Res> {
  factory $AnotherTodoStateCopyWith(
          AnotherTodoState value, $Res Function(AnotherTodoState) then) =
      _$AnotherTodoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnotherTodoStateCopyWithImpl<$Res>
    implements $AnotherTodoStateCopyWith<$Res> {
  _$AnotherTodoStateCopyWithImpl(this._value, this._then);

  final AnotherTodoState _value;
  // ignore: unused_field
  final $Res Function(AnotherTodoState) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$AnotherTodoStateCopyWithImpl<$Res>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, (v) => _then(v as _$_InitialState));

  @override
  _$_InitialState get _value => super._value as _$_InitialState;
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'AnotherTodoState.initialState()';
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
    required TResult Function() fetchingState,
    required TResult Function(List<Todo> todoList) todoAddedToList,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? todoAddedToList,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? todoAddedToList,
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
    required TResult Function(_FetchingState value) fetchingState,
    required TResult Function(_TodoAddedToListState value) todoAddedToList,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_TodoAddedToListState value)? todoAddedToList,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_TodoAddedToListState value)? todoAddedToList,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AnotherTodoState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_FetchingStateCopyWith<$Res> {
  factory _$$_FetchingStateCopyWith(
          _$_FetchingState value, $Res Function(_$_FetchingState) then) =
      __$$_FetchingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchingStateCopyWithImpl<$Res>
    extends _$AnotherTodoStateCopyWithImpl<$Res>
    implements _$$_FetchingStateCopyWith<$Res> {
  __$$_FetchingStateCopyWithImpl(
      _$_FetchingState _value, $Res Function(_$_FetchingState) _then)
      : super(_value, (v) => _then(v as _$_FetchingState));

  @override
  _$_FetchingState get _value => super._value as _$_FetchingState;
}

/// @nodoc

class _$_FetchingState implements _FetchingState {
  const _$_FetchingState();

  @override
  String toString() {
    return 'AnotherTodoState.fetchingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() fetchingState,
    required TResult Function(List<Todo> todoList) todoAddedToList,
  }) {
    return fetchingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? todoAddedToList,
  }) {
    return fetchingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? todoAddedToList,
    required TResult orElse(),
  }) {
    if (fetchingState != null) {
      return fetchingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_FetchingState value) fetchingState,
    required TResult Function(_TodoAddedToListState value) todoAddedToList,
  }) {
    return fetchingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_TodoAddedToListState value)? todoAddedToList,
  }) {
    return fetchingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_TodoAddedToListState value)? todoAddedToList,
    required TResult orElse(),
  }) {
    if (fetchingState != null) {
      return fetchingState(this);
    }
    return orElse();
  }
}

abstract class _FetchingState implements AnotherTodoState {
  const factory _FetchingState() = _$_FetchingState;
}

/// @nodoc
abstract class _$$_TodoAddedToListStateCopyWith<$Res> {
  factory _$$_TodoAddedToListStateCopyWith(_$_TodoAddedToListState value,
          $Res Function(_$_TodoAddedToListState) then) =
      __$$_TodoAddedToListStateCopyWithImpl<$Res>;
  $Res call({List<Todo> todoList});
}

/// @nodoc
class __$$_TodoAddedToListStateCopyWithImpl<$Res>
    extends _$AnotherTodoStateCopyWithImpl<$Res>
    implements _$$_TodoAddedToListStateCopyWith<$Res> {
  __$$_TodoAddedToListStateCopyWithImpl(_$_TodoAddedToListState _value,
      $Res Function(_$_TodoAddedToListState) _then)
      : super(_value, (v) => _then(v as _$_TodoAddedToListState));

  @override
  _$_TodoAddedToListState get _value => super._value as _$_TodoAddedToListState;

  @override
  $Res call({
    Object? todoList = freezed,
  }) {
    return _then(_$_TodoAddedToListState(
      todoList == freezed
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_TodoAddedToListState implements _TodoAddedToListState {
  const _$_TodoAddedToListState(final List<Todo> todoList)
      : _todoList = todoList;

  final List<Todo> _todoList;
  @override
  List<Todo> get todoList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  String toString() {
    return 'AnotherTodoState.todoAddedToList(todoList: $todoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoAddedToListState &&
            const DeepCollectionEquality().equals(other._todoList, _todoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todoList));

  @JsonKey(ignore: true)
  @override
  _$$_TodoAddedToListStateCopyWith<_$_TodoAddedToListState> get copyWith =>
      __$$_TodoAddedToListStateCopyWithImpl<_$_TodoAddedToListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() fetchingState,
    required TResult Function(List<Todo> todoList) todoAddedToList,
  }) {
    return todoAddedToList(todoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? todoAddedToList,
  }) {
    return todoAddedToList?.call(todoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? todoAddedToList,
    required TResult orElse(),
  }) {
    if (todoAddedToList != null) {
      return todoAddedToList(todoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_FetchingState value) fetchingState,
    required TResult Function(_TodoAddedToListState value) todoAddedToList,
  }) {
    return todoAddedToList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_TodoAddedToListState value)? todoAddedToList,
  }) {
    return todoAddedToList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_TodoAddedToListState value)? todoAddedToList,
    required TResult orElse(),
  }) {
    if (todoAddedToList != null) {
      return todoAddedToList(this);
    }
    return orElse();
  }
}

abstract class _TodoAddedToListState implements AnotherTodoState {
  const factory _TodoAddedToListState(final List<Todo> todoList) =
      _$_TodoAddedToListState;

  List<Todo> get todoList;
  @JsonKey(ignore: true)
  _$$_TodoAddedToListStateCopyWith<_$_TodoAddedToListState> get copyWith =>
      throw _privateConstructorUsedError;
}
