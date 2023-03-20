// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooking_step.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CookingStepCWProxy {
  CookingStep step(int? step);

  CookingStep description(String description);

  CookingStep picUrl(String? picUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CookingStep(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CookingStep(...).copyWith(id: 12, name: "My name")
  /// ````
  CookingStep call({
    int? step,
    String? description,
    String? picUrl,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCookingStep.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCookingStep.copyWith.fieldName(...)`
class _$CookingStepCWProxyImpl implements _$CookingStepCWProxy {
  const _$CookingStepCWProxyImpl(this._value);

  final CookingStep _value;

  @override
  CookingStep step(int? step) => this(step: step);

  @override
  CookingStep description(String description) => this(description: description);

  @override
  CookingStep picUrl(String? picUrl) => this(picUrl: picUrl);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CookingStep(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CookingStep(...).copyWith(id: 12, name: "My name")
  /// ````
  CookingStep call({
    Object? step = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? picUrl = const $CopyWithPlaceholder(),
  }) {
    return CookingStep(
      step: step == const $CopyWithPlaceholder()
          ? _value.step
          // ignore: cast_nullable_to_non_nullable
          : step as int?,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      picUrl: picUrl == const $CopyWithPlaceholder()
          ? _value.picUrl
          // ignore: cast_nullable_to_non_nullable
          : picUrl as String?,
    );
  }
}

extension $CookingStepCopyWith on CookingStep {
  /// Returns a callable class that can be used as follows: `instanceOfCookingStep.copyWith(...)` or like so:`instanceOfCookingStep.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CookingStepCWProxy get copyWith => _$CookingStepCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CookingStep _$CookingStepFromJson(Map<String, dynamic> json) => CookingStep(
      step: json['step'] as int?,
      description: json['description'] as String,
      picUrl: json['pic_url'] as String?,
    );

Map<String, dynamic> _$CookingStepToJson(CookingStep instance) =>
    <String, dynamic>{
      'step': instance.step,
      'description': instance.description,
      'pic_url': instance.picUrl,
    };
