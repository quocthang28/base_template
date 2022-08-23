import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_bloc.freezed.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.initialEvent() = _InitialEvent;
  const factory CounterEvent.increaseButtonPressed() = _IncreaseButtonPressed;
  const factory CounterEvent.decreaseButtonPressed() = _DecreaseButtonPressed;
}

@freezed
class CounterState with _$CounterState {
  const factory CounterState.initialState() = _InitialState;
  const factory CounterState.numberIncreased(int newValue) = _NumberIncreased;
  const factory CounterState.numberDecreased(int newValue) = _NumberDecreased;
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int value = 0;

  CounterBloc() : super(const CounterState.initialState()) {
    on<CounterEvent>((event, emit) {
      event.when(
        initialEvent: () {},
        increaseButtonPressed: onIncreasedButtonPressed,
        decreaseButtonPressed: onDecreasedButtonPressed,
      );
    });
  }

  void onIncreasedButtonPressed() {
    value++;
    emit(CounterState.numberIncreased(value));
  }

  void onDecreasedButtonPressed() {
    value--;
    emit(CounterState.numberDecreased(value));
  }
}
