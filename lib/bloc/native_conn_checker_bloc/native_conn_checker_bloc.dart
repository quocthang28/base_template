import 'package:base_template/bloc/connectivity_checker_bloc/connectivity_checker_bloc.dart';
import 'package:base_template/constant/connectivity_type.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'native_conn_checker_bloc.freezed.dart';

@freezed
class NativeConnCheckerEvent with _$NativeConnCheckerEvent {
  const factory NativeConnCheckerEvent.initialEvent() = _InitialEvent;
  const factory NativeConnCheckerEvent.initializeConCheckerEvent() = _InitializeConCheckerEvent;
  const factory NativeConnCheckerEvent.notifyDisconnectedEvent() = _NotifyDisconnectedEvent;
  const factory NativeConnCheckerEvent.notifyConnectedEvent() = _NotifyConnectedEvent;
}

@freezed
class NativeConnCheckerState with _$NativeConnCheckerState {
  const factory NativeConnCheckerState.initialState() = _InitialState;
  const factory NativeConnCheckerState.connectionLostState() = _ConnectionLostState;
  const factory NativeConnCheckerState.connectionRestoredState() = _ConnectionRestoredState;
}

class NativeConnCheckerBloc extends Bloc<NativeConnCheckerEvent, NativeConnCheckerState> {
  NativeConnCheckerBloc() : super(const NativeConnCheckerState.initialState()) {
    on<NativeConnCheckerEvent>((event, emit) {
      event.when(
        initialEvent: () {},
        initializeConCheckerEvent: () {
          connectivityStatusStream.listen((connectionType) {
            print(connectionType);
            if (connectionType == ConnectionType.disconnected.value) {
              add(const NativeConnCheckerEvent.notifyDisconnectedEvent());
            } else {
              add(const NativeConnCheckerEvent.notifyConnectedEvent());
            }
          });
        },
        notifyDisconnectedEvent: () => emit(const NativeConnCheckerState.connectionLostState()),
        notifyConnectedEvent: () => emit(const NativeConnCheckerState.connectionRestoredState()),
      );
    });
  }

  final Stream<dynamic> connectivityStatusStream = const EventChannel('platform_channel_events/connectivity')
      .receiveBroadcastStream()
      .distinct()
      .asBroadcastStream();
}