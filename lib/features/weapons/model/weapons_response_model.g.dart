// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapons_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeaponsResponseModel _$WeaponsResponseModelFromJson(
        Map<String, dynamic> json) =>
    WeaponsResponseModel(
      displayName: json['displayName'] as String?,
      category: json['category'] as String?,
      displayIcon: json['displayIcon'] as String?,
      weaponStats: json['weaponStats'] == null
          ? null
          : WeaponStats.fromJson(json['weaponStats'] as Map<String, dynamic>),
    );

WeaponStats _$WeaponStatsFromJson(Map<String, dynamic> json) => WeaponStats(
      fireRate: (json['fireRate'] as num?)?.toDouble(),
      magazineSize: json['magazineSize'] as int?,
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num?)?.toDouble(),
      equipTimeSeconds: (json['equipTimeSeconds'] as num?)?.toDouble(),
      reloadTimeSeconds: (json['reloadTimeSeconds'] as num?)?.toDouble(),
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num?)?.toDouble(),
      shotgunPelletCount: json['shotgunPelletCount'] as int?,
      wallPenetration: json['wallPenetration'] as String?,
      feature: json['feature'] as String?,
      altFireType: json['altFireType'] as String?,
      damageRanges: (json['damageRanges'] as List<dynamic>?)
          ?.map((e) => DamageRanges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

DamageRanges _$DamageRangesFromJson(Map<String, dynamic> json) => DamageRanges(
      rangeStartMeters: (json['rangeStartMeters'] as num?)?.toDouble(),
      rangeEndMeters: (json['rangeEndMeters'] as num?)?.toDouble(),
      headDamage: (json['headDamage'] as num?)?.toDouble(),
      bodyDamage: (json['bodyDamage'] as num?)?.toDouble(),
      legDamage: (json['legDamage'] as num?)?.toDouble(),
    );
