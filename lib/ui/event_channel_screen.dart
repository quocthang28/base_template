import 'package:base_template/bloc/native_conn_checker_bloc/native_conn_checker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventChannelScreen extends StatefulWidget {
  const EventChannelScreen({Key? key}) : super(key: key);

  @override
  State<EventChannelScreen> createState() => _EventChannelScreenState();
}

class _EventChannelScreenState extends State<EventChannelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder<NativeConnCheckerBloc, NativeConnCheckerState>(
          builder: (BuildContext context, state) {
            return state.when(
              initialState: () => 'aaaaaaaaaa'.text.make(),
              connectionLostState: () => 'Connection lost'.text.make(),
              connectionRestoredState: () => 'Connection established'.text.make(),
            );
          },
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    context.read<NativeConnCheckerBloc>().add(const NativeConnCheckerEvent.initializeConCheckerEvent());
    super.didChangeDependencies();
  }
}
