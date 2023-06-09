// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() fetchTodoListEvent,
    required TResult Function(Todo todo) addTodoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? fetchTodoListEvent,
    TResult? Function(Todo todo)? addTodoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? fetchTodoListEvent,
    TResult Function(Todo todo)? addTodoEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_FetchTodoListEvent value) fetchTodoListEvent,
    required TResult Function(_AddTodoEvent value) addTodoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_FetchTodoListEvent value)? fetchTodoListEvent,
    TResult? Function(_AddTodoEvent value)? addTodoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_FetchTodoListEvent value)? fetchTodoListEvent,
    TResult Function(_AddTodoEvent value)? addTodoEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

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
    extends _$TodoEventCopyWithImpl<$Res, _$_InitialEvent>
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
    return 'TodoEvent.initialEvent()';
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
    required TResult Function() fetchTodoListEvent,
    required TResult Function(Todo todo) addTodoEvent,
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? fetchTodoListEvent,
    TResult? Function(Todo todo)? addTodoEvent,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? fetchTodoListEvent,
    TResult Function(Todo todo)? addTodoEvent,
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
    required TResult Function(_FetchTodoListEvent value) fetchTodoListEvent,
    required TResult Function(_AddTodoEvent value) addTodoEvent,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_FetchTodoListEvent value)? fetchTodoListEvent,
    TResult? Function(_AddTodoEvent value)? addTodoEvent,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_FetchTodoListEvent value)? fetchTodoListEvent,
    TResult Function(_AddTodoEvent value)? addTodoEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements TodoEvent {
  const factory _InitialEvent() = _$_InitialEvent;
}

/// @nodoc
abstract class _$$_FetchTodoListEventCopyWith<$Res> {
  factory _$$_FetchTodoListEventCopyWith(_$_FetchTodoListEvent value,
          $Res Function(_$_FetchTodoListEvent) then) =
      __$$_FetchTodoListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchTodoListEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_FetchTodoListEvent>
    implements _$$_FetchTodoListEventCopyWith<$Res> {
  __$$_FetchTodoListEventCopyWithImpl(
      _$_FetchTodoListEvent _value, $Res Function(_$_FetchTodoListEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchTodoListEvent implements _FetchTodoListEvent {
  const _$_FetchTodoListEvent();

  @override
  String toString() {
    return 'TodoEvent.fetchTodoListEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchTodoListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() fetchTodoListEvent,
    required TResult Function(Todo todo) addTodoEvent,
  }) {
    return fetchTodoListEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? fetchTodoListEvent,
    TResult? Function(Todo todo)? addTodoEvent,
  }) {
    return fetchTodoListEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? fetchTodoListEvent,
    TResult Function(Todo todo)? addTodoEvent,
    required TResult orElse(),
  }) {
    if (fetchTodoListEvent != null) {
      return fetchTodoListEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_FetchTodoListEvent value) fetchTodoListEvent,
    required TResult Function(_AddTodoEvent value) addTodoEvent,
  }) {
    return fetchTodoListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_FetchTodoListEvent value)? fetchTodoListEvent,
    TResult? Function(_AddTodoEvent value)? addTodoEvent,
  }) {
    return fetchTodoListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_FetchTodoListEvent value)? fetchTodoListEvent,
    TResult Function(_AddTodoEvent value)? addTodoEvent,
    required TResult orElse(),
  }) {
    if (fetchTodoListEvent != null) {
      return fetchTodoListEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchTodoListEvent implements TodoEvent {
  const factory _FetchTodoListEvent() = _$_FetchTodoListEvent;
}

/// @nodoc
abstract class _$$_AddTodoEventCopyWith<$Res> {
  factory _$$_AddTodoEventCopyWith(
          _$_AddTodoEvent value, $Res Function(_$_AddTodoEvent) then) =
      __$$_AddTodoEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});
}

/// @nodoc
class __$$_AddTodoEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_AddTodoEvent>
    implements _$$_AddTodoEventCopyWith<$Res> {
  __$$_AddTodoEventCopyWithImpl(
      _$_AddTodoEvent _value, $Res Function(_$_AddTodoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$_AddTodoEvent(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_AddTodoEvent implements _AddTodoEvent {
  const _$_AddTodoEvent(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.addTodoEvent(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTodoEvent &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTodoEventCopyWith<_$_AddTodoEvent> get copyWith =>
      __$$_AddTodoEventCopyWithImpl<_$_AddTodoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() fetchTodoListEvent,
    required TResult Function(Todo todo) addTodoEvent,
  }) {
    return addTodoEvent(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? fetchTodoListEvent,
    TResult? Function(Todo todo)? addTodoEvent,
  }) {
    return addTodoEvent?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? fetchTodoListEvent,
    TResult Function(Todo todo)? addTodoEvent,
    required TResult orElse(),
  }) {
    if (addTodoEvent != null) {
      return addTodoEvent(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_FetchTodoListEvent value) fetchTodoListEvent,
    required TResult Function(_AddTodoEvent value) addTodoEvent,
  }) {
    return addTodoEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_FetchTodoListEvent value)? fetchTodoListEvent,
    TResult? Function(_AddTodoEvent value)? addTodoEvent,
  }) {
    return addTodoEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_FetchTodoListEvent value)? fetchTodoListEvent,
    TResult Function(_AddTodoEvent value)? addTodoEvent,
    required TResult orElse(),
  }) {
    if (addTodoEvent != null) {
      return addTodoEvent(this);
    }
    return orElse();
  }
}

abstract class _AddTodoEvent implements TodoEvent {
  const factory _AddTodoEvent(final Todo todo) = _$_AddTodoEvent;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$_AddTodoEventCopyWith<_$_AddTodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() fetchingState,
    required TResult Function(List<Todo> todoList) fetchedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? fetchingState,
    TResult? Function(List<Todo> todoList)? fetchedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? fetchedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_FetchingState value) fetchingState,
    required TResult Function(_FetchedState value) fetchedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_FetchingState value)? fetchingState,
    TResult? Function(_FetchedState value)? fetchedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_FetchedState value)? fetchedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

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
    extends _$TodoStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'TodoState.initialState()';
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
    required TResult Function(List<Todo> todoList) fetchedState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? fetchingState,
    TResult? Function(List<Todo> todoList)? fetchedState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? fetchedState,
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
    required TResult Function(_FetchedState value) fetchedState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_FetchingState value)? fetchingState,
    TResult? Function(_FetchedState value)? fetchedState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_FetchedState value)? fetchedState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements TodoState {
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
    extends _$TodoStateCopyWithImpl<$Res, _$_FetchingState>
    implements _$$_FetchingStateCopyWith<$Res> {
  __$$_FetchingStateCopyWithImpl(
      _$_FetchingState _value, $Res Function(_$_FetchingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchingState implements _FetchingState {
  const _$_FetchingState();

  @override
  String toString() {
    return 'TodoState.fetchingState()';
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
    required TResult Function(List<Todo> todoList) fetchedState,
  }) {
    return fetchingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? fetchingState,
    TResult? Function(List<Todo> todoList)? fetchedState,
  }) {
    return fetchingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? fetchedState,
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
    required TResult Function(_FetchedState value) fetchedState,
  }) {
    return fetchingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_FetchingState value)? fetchingState,
    TResult? Function(_FetchedState value)? fetchedState,
  }) {
    return fetchingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_FetchedState value)? fetchedState,
    required TResult orElse(),
  }) {
    if (fetchingState != null) {
      return fetchingState(this);
    }
    return orElse();
  }
}

abstract class _FetchingState implements TodoState {
  const factory _FetchingState() = _$_FetchingState;
}

/// @nodoc
abstract class _$$_FetchedStateCopyWith<$Res> {
  factory _$$_FetchedStateCopyWith(
          _$_FetchedState value, $Res Function(_$_FetchedState) then) =
      __$$_FetchedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Todo> todoList});
}

/// @nodoc
class __$$_FetchedStateCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$_FetchedState>
    implements _$$_FetchedStateCopyWith<$Res> {
  __$$_FetchedStateCopyWithImpl(
      _$_FetchedState _value, $Res Function(_$_FetchedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoList = null,
  }) {
    return _then(_$_FetchedState(
      null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_FetchedState implements _FetchedState {
  const _$_FetchedState(final List<Todo> todoList) : _todoList = todoList;

  final List<Todo> _todoList;
  @override
  List<Todo> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  String toString() {
    return 'TodoState.fetchedState(todoList: $todoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchedState &&
            const DeepCollectionEquality().equals(other._todoList, _todoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchedStateCopyWith<_$_FetchedState> get copyWith =>
      __$$_FetchedStateCopyWithImpl<_$_FetchedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() fetchingState,
    required TResult Function(List<Todo> todoList) fetchedState,
  }) {
    return fetchedState(todoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? fetchingState,
    TResult? Function(List<Todo> todoList)? fetchedState,
  }) {
    return fetchedState?.call(todoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? fetchingState,
    TResult Function(List<Todo> todoList)? fetchedState,
    required TResult orElse(),
  }) {
    if (fetchedState != null) {
      return fetchedState(todoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_FetchingState value) fetchingState,
    required TResult Function(_FetchedState value) fetchedState,
  }) {
    return fetchedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_FetchingState value)? fetchingState,
    TResult? Function(_FetchedState value)? fetchedState,
  }) {
    return fetchedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_FetchingState value)? fetchingState,
    TResult Function(_FetchedState value)? fetchedState,
    required TResult orElse(),
  }) {
    if (fetchedState != null) {
      return fetchedState(this);
    }
    return orElse();
  }
}

abstract class _FetchedState implements TodoState {
  const factory _FetchedState(final List<Todo> todoList) = _$_FetchedState;

  List<Todo> get todoList;
  @JsonKey(ignore: true)
  _$$_FetchedStateCopyWith<_$_FetchedState> get copyWith =>
      throw _privateConstructorUsedError;
}
