// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapons_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeaponsResponseModel _$WeaponsResponseModelFromJson(
        Map<String, dynamic> json) =>
    WeaponsResponseModel(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      category: json['category'] as String?,
      defaultSkinUuid: json['defaultSkinUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      killStreamIcon: json['killStreamIcon'] as String?,
      assetPath: json['assetPath'] as String?,
      weaponStats: json['weaponStats'] == null
          ? null
          : WeaponStats.fromJson(json['weaponStats'] as Map<String, dynamic>),
      shopData: json['shopData'] == null
          ? null
          : ShopData.fromJson(json['shopData'] as Map<String, dynamic>),
      skins: (json['skins'] as List<dynamic>?)
          ?.map((e) => Skins.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      adsStats: json['adsStats'] == null
          ? null
          : AdsStats.fromJson(json['adsStats'] as Map<String, dynamic>),
      damageRanges: (json['damageRanges'] as List<dynamic>?)
          ?.map((e) => DamageRanges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

AdsStats _$AdsStatsFromJson(Map<String, dynamic> json) => AdsStats(
      zoomMultiplier: (json['zoomMultiplier'] as num?)?.toDouble(),
      fireRate: (json['fireRate'] as num?)?.toDouble(),
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num?)?.toDouble(),
      burstCount: json['burstCount'] as int?,
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num?)?.toDouble(),
    );

DamageRanges _$DamageRangesFromJson(Map<String, dynamic> json) => DamageRanges(
      rangeStartMeters: (json['rangeStartMeters'] as num?)?.toDouble(),
      rangeEndMeters: (json['rangeEndMeters'] as num?)?.toDouble(),
      headDamage: (json['headDamage'] as num?)?.toDouble(),
      bodyDamage: (json['bodyDamage'] as num?)?.toDouble(),
      legDamage: (json['legDamage'] as num?)?.toDouble(),
    );

ShopData _$ShopDataFromJson(Map<String, dynamic> json) => ShopData(
      cost: json['cost'] as int?,
      category: json['category'] as String?,
      categoryText: json['categoryText'] as String?,
      gridPosition: json['gridPosition'] == null
          ? null
          : GridPosition.fromJson(json['gridPosition'] as Map<String, dynamic>),
      canBeTrashed: json['canBeTrashed'] as bool?,
      assetPath: json['assetPath'] as String?,
    );

GridPosition _$GridPositionFromJson(Map<String, dynamic> json) => GridPosition(
      row: json['row'] as int?,
      column: json['column'] as int?,
    );

Skins _$SkinsFromJson(Map<String, dynamic> json) => Skins(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      themeUuid: json['themeUuid'] as String?,
      contentTierUuid: json['contentTierUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      assetPath: json['assetPath'] as String?,
      chromas: (json['chromas'] as List<dynamic>?)
          ?.map((e) => Chromas.fromJson(e as Map<String, dynamic>))
          .toList(),
      levels: (json['levels'] as List<dynamic>?)
          ?.map((e) => Levels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Chromas _$ChromasFromJson(Map<String, dynamic> json) => Chromas(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      displayIcon: json['displayIcon'] as String?,
      fullRender: json['fullRender'] as String?,
      swatch: json['swatch'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Levels _$LevelsFromJson(Map<String, dynamic> json) => Levels(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      levelItem: json['levelItem'] as String?,
      displayIcon: json['displayIcon'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String?,
    );
