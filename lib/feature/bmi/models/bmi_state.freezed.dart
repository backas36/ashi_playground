// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bmi_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BmiState {

 Gender? get gender; int get height;// 添加預設值
 int get weight;// 添加預設值
 int get age;
/// Create a copy of BmiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BmiStateCopyWith<BmiState> get copyWith => _$BmiStateCopyWithImpl<BmiState>(this as BmiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BmiState&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,gender,height,weight,age);

@override
String toString() {
  return 'BmiState(gender: $gender, height: $height, weight: $weight, age: $age)';
}


}

/// @nodoc
abstract mixin class $BmiStateCopyWith<$Res>  {
  factory $BmiStateCopyWith(BmiState value, $Res Function(BmiState) _then) = _$BmiStateCopyWithImpl;
@useResult
$Res call({
 Gender? gender, int height, int weight, int age
});




}
/// @nodoc
class _$BmiStateCopyWithImpl<$Res>
    implements $BmiStateCopyWith<$Res> {
  _$BmiStateCopyWithImpl(this._self, this._then);

  final BmiState _self;
  final $Res Function(BmiState) _then;

/// Create a copy of BmiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = freezed,Object? height = null,Object? weight = null,Object? age = null,}) {
  return _then(_self.copyWith(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _BmiState implements BmiState {
  const _BmiState({this.gender, this.height = 150, this.weight = 50, this.age = 31});
  

@override final  Gender? gender;
@override@JsonKey() final  int height;
// 添加預設值
@override@JsonKey() final  int weight;
// 添加預設值
@override@JsonKey() final  int age;

/// Create a copy of BmiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BmiStateCopyWith<_BmiState> get copyWith => __$BmiStateCopyWithImpl<_BmiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BmiState&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,gender,height,weight,age);

@override
String toString() {
  return 'BmiState(gender: $gender, height: $height, weight: $weight, age: $age)';
}


}

/// @nodoc
abstract mixin class _$BmiStateCopyWith<$Res> implements $BmiStateCopyWith<$Res> {
  factory _$BmiStateCopyWith(_BmiState value, $Res Function(_BmiState) _then) = __$BmiStateCopyWithImpl;
@override @useResult
$Res call({
 Gender? gender, int height, int weight, int age
});




}
/// @nodoc
class __$BmiStateCopyWithImpl<$Res>
    implements _$BmiStateCopyWith<$Res> {
  __$BmiStateCopyWithImpl(this._self, this._then);

  final _BmiState _self;
  final $Res Function(_BmiState) _then;

/// Create a copy of BmiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = freezed,Object? height = null,Object? weight = null,Object? age = null,}) {
  return _then(_BmiState(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
