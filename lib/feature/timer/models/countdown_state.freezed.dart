// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countdown_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CountdownState {

 DateTime get endTime; Duration get remainingTime;
/// Create a copy of CountdownState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountdownStateCopyWith<CountdownState> get copyWith => _$CountdownStateCopyWithImpl<CountdownState>(this as CountdownState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountdownState&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.remainingTime, remainingTime) || other.remainingTime == remainingTime));
}


@override
int get hashCode => Object.hash(runtimeType,endTime,remainingTime);

@override
String toString() {
  return 'CountdownState(endTime: $endTime, remainingTime: $remainingTime)';
}


}

/// @nodoc
abstract mixin class $CountdownStateCopyWith<$Res>  {
  factory $CountdownStateCopyWith(CountdownState value, $Res Function(CountdownState) _then) = _$CountdownStateCopyWithImpl;
@useResult
$Res call({
 DateTime endTime, Duration remainingTime
});




}
/// @nodoc
class _$CountdownStateCopyWithImpl<$Res>
    implements $CountdownStateCopyWith<$Res> {
  _$CountdownStateCopyWithImpl(this._self, this._then);

  final CountdownState _self;
  final $Res Function(CountdownState) _then;

/// Create a copy of CountdownState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? endTime = null,Object? remainingTime = null,}) {
  return _then(_self.copyWith(
endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,remainingTime: null == remainingTime ? _self.remainingTime : remainingTime // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// @nodoc


class _CountdownState implements CountdownState {
  const _CountdownState({required this.endTime, required this.remainingTime});
  

@override final  DateTime endTime;
@override final  Duration remainingTime;

/// Create a copy of CountdownState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountdownStateCopyWith<_CountdownState> get copyWith => __$CountdownStateCopyWithImpl<_CountdownState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountdownState&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.remainingTime, remainingTime) || other.remainingTime == remainingTime));
}


@override
int get hashCode => Object.hash(runtimeType,endTime,remainingTime);

@override
String toString() {
  return 'CountdownState(endTime: $endTime, remainingTime: $remainingTime)';
}


}

/// @nodoc
abstract mixin class _$CountdownStateCopyWith<$Res> implements $CountdownStateCopyWith<$Res> {
  factory _$CountdownStateCopyWith(_CountdownState value, $Res Function(_CountdownState) _then) = __$CountdownStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime endTime, Duration remainingTime
});




}
/// @nodoc
class __$CountdownStateCopyWithImpl<$Res>
    implements _$CountdownStateCopyWith<$Res> {
  __$CountdownStateCopyWithImpl(this._self, this._then);

  final _CountdownState _self;
  final $Res Function(_CountdownState) _then;

/// Create a copy of CountdownState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? endTime = null,Object? remainingTime = null,}) {
  return _then(_CountdownState(
endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,remainingTime: null == remainingTime ? _self.remainingTime : remainingTime // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

// dart format on
