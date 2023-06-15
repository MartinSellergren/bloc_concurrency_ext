import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/test_bloc.dart';

void main() {
  final testBloc = TestBloc();
  runApp(MaterialApp(home: MyHomePage(testBloc: testBloc)));
}

class MyHomePage extends StatelessWidget {
  final TestBloc testBloc;
  const MyHomePage({
    Key? key,
    required this.testBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: BlocBuilder(
              bloc: testBloc,
              builder: (context, state) => Text(state.toString()))),
      floatingActionButton: FloatingActionButton(
          onPressed: () => testBloc.add(const TestEvent.click())),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () =>
                testBloc.add(const TestEvent.sync(localWins: true)),
            child: const Text('sync, local wins'),
          ),
          ElevatedButton(
            onPressed: () =>
                testBloc.add(const TestEvent.sync(localWins: false)),
            child: const Text('sync, remote wins'),
          ),
        ],
      )),
    );
  }
}
