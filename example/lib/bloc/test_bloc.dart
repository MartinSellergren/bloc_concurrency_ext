// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bloc_concurrency_ext/bloc_concurrency_ext.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_bloc.freezed.dart';
part 'test_event.dart';

class TestBloc extends Bloc<TestEvent, int> {
  TestBloc() : super(0) {
    // on<_Click>(_onClick, transformer: concurrent());
    on<_Click>(_onClick, transformer: finalizedDroppable());

    on<_Sync>(_onSync,
        transformer: debouncedRestartable(
          duration: const Duration(seconds: 0),
          pickEventFromQueue: (events) => events.firstWhere(
            (e) => e.localWins,
            orElse: () => events.last,
          ),
        ));
  }

  Future<void> _onClick(_Click event, Emitter<int> emit) async {
    print('click0: $state ${emit.isDone}');
    await Future.delayed(const Duration(seconds: 2));
    print('click1: $state ${emit.isDone}');
    emit(state + 1);
  }

  Future<void> _onSync(_Sync event, Emitter<int> emit) async {
    print('sync0: ${emit.isDone} localWins=${event.localWins}');
    await Future.delayed(const Duration(seconds: 2));
    print('sync1: ${emit.isDone} localWins=${event.localWins}');
    emit(event.localWins ? 101 : -101);
  }

  restartable() {}
}
