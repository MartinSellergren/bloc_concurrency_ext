part of 'test_bloc.dart';

@freezed
class TestEvent with _$TestEvent {
  const factory TestEvent.click() = _Click;
  const factory TestEvent.sync({required bool localWins}) = _Sync;
}
