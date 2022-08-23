import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_checker_bloc.freezed.dart';

@freezed
class ConnectivityCheckerEvent with _$ConnectivityCheckerEvent {
  const factory ConnectivityCheckerEvent.initialEvent() = _InitialEvent;
  const factory ConnectivityCheckerEvent.initializeConCheckerEvent() = _InitializeConCheckerEvent;
  const factory ConnectivityCheckerEvent.notifyDisconnectedEvent() = _NotifyDisconnectedEvent;
  const factory ConnectivityCheckerEvent.notifyConnectedEvent() = _NotifyConnectedEvent;
}

@freezed
class ConnectivityCheckerState with _$ConnectivityCheckerState {
  const factory ConnectivityCheckerState.initialState() = _InitialState;
  const factory ConnectivityCheckerState.connectionLostState() = _ConnectionLostState;
  const factory ConnectivityCheckerState.connectionRestoredState() = _ConnectionRestoredState;
}

class ConnectivityCheckerBloc extends Bloc<ConnectivityCheckerEvent, ConnectivityCheckerState> {
  ConnectivityCheckerBloc() : super(const ConnectivityCheckerState.initialState()) {
    on<ConnectivityCheckerEvent>((event, emit) async {
      event.when(
        initialEvent: () {},
        initializeConCheckerEvent: () {
          Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
            if (result == ConnectivityResult.none) {
              add(const ConnectivityCheckerEvent.notifyDisconnectedEvent());
            } else {
              add(const ConnectivityCheckerEvent.notifyConnectedEvent());
            }
          });
        },
        notifyDisconnectedEvent: () => emit(const ConnectivityCheckerState.connectionLostState()),
        notifyConnectedEvent: () => emit(const ConnectivityCheckerState.connectionRestoredState()),
      );
    });
  }
}
