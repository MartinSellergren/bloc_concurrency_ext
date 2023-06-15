library bloc_concurrency_ext;

import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart' show ExhaustMapExtension;
import 'package:stream_transform/stream_transform.dart';

EventTransformer<E> finalizedDroppable<E>() {
  return (events, mapper) {
    return events.asyncMapBuffer((events) async {
      await mapper(events.last).toList();
      return events.last;
    });
  };
}

EventTransformer<E> debouncedSequential<E>({
  required Duration duration,
  E Function(List<E> events)? pickEventFromQueue,
}) {
  return (events, mapper) => events.debounceBuffer(duration).asyncExpand(
      (events) => mapper(pickEventFromQueue?.call(events) ?? events.last));
}

EventTransformer<E> debouncedDroppable<E>({
  required Duration duration,
  E Function(List<E> events)? pickEventFromQueue,
}) {
  return (events, mapper) => events.debounceBuffer(duration).exhaustMap(
      (events) => mapper(pickEventFromQueue?.call(events) ?? events.last));
}

EventTransformer<E> debouncedRestartable<E>({
  required Duration duration,
  E Function(List<E> events)? pickEventFromQueue,
}) {
  return (events, mapper) => events.debounceBuffer(duration).switchMap(
      (events) => mapper(pickEventFromQueue?.call(events) ?? events.last));
}

EventTransformer<E> debouncedConcurrent<E>({
  required Duration duration,
  E Function(List<E> events)? pickEventFromQueue,
}) {
  return (events, mapper) => events
      .debounceBuffer(duration)
      .concurrentAsyncExpand(
          (events) => mapper(pickEventFromQueue?.call(events) ?? events.last));
}
