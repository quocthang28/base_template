import 'package:base_template/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
              return state.maybeWhen(
                  initialState: () => const Text('0', style: TextStyle(fontSize: 50)),
                  numberIncreased: (newValue) => Text(newValue.toString(), style: const TextStyle(fontSize: 50)),
                  numberDecreased: (newValue) => Text(newValue.toString(), style: const TextStyle(fontSize: 50)),
                  orElse: () => const SizedBox.shrink());
            }),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                    onPressed: () => context.read<CounterBloc>().add(const CounterEvent.decreaseButtonPressed()),
                    child: const Text('Decrease')),
                TextButton(
                    onPressed: () => context.read<CounterBloc>().add(const CounterEvent.increaseButtonPressed()),
                    child: const Text('Increase')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
