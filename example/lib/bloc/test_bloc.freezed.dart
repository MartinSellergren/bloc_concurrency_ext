// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() click,
    required TResult Function(bool localWins) sync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? click,
    TResult? Function(bool localWins)? sync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? click,
    TResult Function(bool localWins)? sync,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Click value) click,
    required TResult Function(_Sync value) sync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Click value)? click,
    TResult? Function(_Sync value)? sync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Click value)? click,
    TResult Function(_Sync value)? sync,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestEventCopyWith<$Res> {
  factory $TestEventCopyWith(TestEvent value, $Res Function(TestEvent) then) =
      _$TestEventCopyWithImpl<$Res, TestEvent>;
}

/// @nodoc
class _$TestEventCopyWithImpl<$Res, $Val extends TestEvent>
    implements $TestEventCopyWith<$Res> {
  _$TestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClickCopyWith<$Res> {
  factory _$$_ClickCopyWith(_$_Click value, $Res Function(_$_Click) then) =
      __$$_ClickCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClickCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$_Click>
    implements _$$_ClickCopyWith<$Res> {
  __$$_ClickCopyWithImpl(_$_Click _value, $Res Function(_$_Click) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Click implements _Click {
  const _$_Click();

  @override
  String toString() {
    return 'TestEvent.click()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Click);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() click,
    required TResult Function(bool localWins) sync,
  }) {
    return click();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? click,
    TResult? Function(bool localWins)? sync,
  }) {
    return click?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? click,
    TResult Function(bool localWins)? sync,
    required TResult orElse(),
  }) {
    if (click != null) {
      return click();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Click value) click,
    required TResult Function(_Sync value) sync,
  }) {
    return click(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Click value)? click,
    TResult? Function(_Sync value)? sync,
  }) {
    return click?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Click value)? click,
    TResult Function(_Sync value)? sync,
    required TResult orElse(),
  }) {
    if (click != null) {
      return click(this);
    }
    return orElse();
  }
}

abstract class _Click implements TestEvent {
  const factory _Click() = _$_Click;
}

/// @nodoc
abstract class _$$_SyncCopyWith<$Res> {
  factory _$$_SyncCopyWith(_$_Sync value, $Res Function(_$_Sync) then) =
      __$$_SyncCopyWithImpl<$Res>;
  @useResult
  $Res call({bool localWins});
}

/// @nodoc
class __$$_SyncCopyWithImpl<$Res> extends _$TestEventCopyWithImpl<$Res, _$_Sync>
    implements _$$_SyncCopyWith<$Res> {
  __$$_SyncCopyWithImpl(_$_Sync _value, $Res Function(_$_Sync) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localWins = null,
  }) {
    return _then(_$_Sync(
      localWins: null == localWins
          ? _value.localWins
          : localWins // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Sync implements _Sync {
  const _$_Sync({required this.localWins});

  @override
  final bool localWins;

  @override
  String toString() {
    return 'TestEvent.sync(localWins: $localWins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sync &&
            (identical(other.localWins, localWins) ||
                other.localWins == localWins));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localWins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SyncCopyWith<_$_Sync> get copyWith =>
      __$$_SyncCopyWithImpl<_$_Sync>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() click,
    required TResult Function(bool localWins) sync,
  }) {
    return sync(localWins);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? click,
    TResult? Function(bool localWins)? sync,
  }) {
    return sync?.call(localWins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? click,
    TResult Function(bool localWins)? sync,
    required TResult orElse(),
  }) {
    if (sync != null) {
      return sync(localWins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Click value) click,
    required TResult Function(_Sync value) sync,
  }) {
    return sync(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Click value)? click,
    TResult? Function(_Sync value)? sync,
  }) {
    return sync?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Click value)? click,
    TResult Function(_Sync value)? sync,
    required TResult orElse(),
  }) {
    if (sync != null) {
      return sync(this);
    }
    return orElse();
  }
}

abstract class _Sync implements TestEvent {
  const factory _Sync({required final bool localWins}) = _$_Sync;

  bool get localWins;
  @JsonKey(ignore: true)
  _$$_SyncCopyWith<_$_Sync> get copyWith => throw _privateConstructorUsedError;
}
