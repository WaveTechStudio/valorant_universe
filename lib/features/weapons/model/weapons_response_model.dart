// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'weapons_response_model.g.dart';

@JsonSerializable(createToJson: false)
class WeaponsResponseModel {
  String? uuid;
  String? displayName;
  String? category;
  String? defaultSkinUuid;
  String? displayIcon;
  String? killStreamIcon;
  String? assetPath;
  WeaponStats? weaponStats;
  ShopData? shopData;
  List<Skins>? skins;

  WeaponsResponseModel({
    this.uuid,
    this.displayName,
    this.category,
    this.defaultSkinUuid,
    this.displayIcon,
    this.killStreamIcon,
    this.assetPath,
    this.weaponStats,
    this.shopData,
    this.skins,
  });

  factory WeaponsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$WeaponsResponseModelFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class WeaponStats {
  double? fireRate;
  int? magazineSize;
  double? runSpeedMultiplier;
  double? equipTimeSeconds;
  double? reloadTimeSeconds;
  double? firstBulletAccuracy;
  int? shotgunPelletCount;
  String? wallPenetration;
  String? feature;

  String? altFireType;
  AdsStats? adsStats;

  List<DamageRanges>? damageRanges;

  WeaponStats(
      {this.fireRate,
      this.magazineSize,
      this.runSpeedMultiplier,
      this.equipTimeSeconds,
      this.reloadTimeSeconds,
      this.firstBulletAccuracy,
      this.shotgunPelletCount,
      this.wallPenetration,
      this.feature,
      this.altFireType,
      this.adsStats,
      this.damageRanges});

  factory WeaponStats.fromJson(Map<String, dynamic> json) {
    return _$WeaponStatsFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class AdsStats {
  double? zoomMultiplier;
  double? fireRate;
  double? runSpeedMultiplier;
  int? burstCount;
  double? firstBulletAccuracy;

  AdsStats({this.zoomMultiplier, this.fireRate, this.runSpeedMultiplier, this.burstCount, this.firstBulletAccuracy});

  factory AdsStats.fromJson(Map<String, dynamic> json) {
    return _$AdsStatsFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class DamageRanges {
  double? rangeStartMeters;
  double? rangeEndMeters;
  double? headDamage;
  double? bodyDamage;
  double? legDamage;

  DamageRanges({this.rangeStartMeters, this.rangeEndMeters, this.headDamage, this.bodyDamage, this.legDamage});

  factory DamageRanges.fromJson(Map<String, dynamic> json) {
    return _$DamageRangesFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class ShopData {
  int? cost;
  String? category;
  String? categoryText;
  GridPosition? gridPosition;
  bool? canBeTrashed;

  String? assetPath;

  ShopData({this.cost, this.category, this.categoryText, this.gridPosition, this.canBeTrashed, this.assetPath});

  factory ShopData.fromJson(Map<String, dynamic> json) {
    return _$ShopDataFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class GridPosition {
  int? row;
  int? column;

  GridPosition({this.row, this.column});

  factory GridPosition.fromJson(Map<String, dynamic> json) {
    return _$GridPositionFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Skins {
  String? uuid;
  String? displayName;
  String? themeUuid;
  String? contentTierUuid;
  String? displayIcon;

  String? assetPath;
  List<Chromas>? chromas;
  List<Levels>? levels;

  Skins(
      {this.uuid,
      this.displayName,
      this.themeUuid,
      this.contentTierUuid,
      this.displayIcon,
      this.assetPath,
      this.chromas,
      this.levels});

  factory Skins.fromJson(Map<String, dynamic> json) {
    return _$SkinsFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Chromas {
  String? uuid;
  String? displayName;
  String? displayIcon;
  String? fullRender;
  String? swatch;

  String? assetPath;

  Chromas({this.uuid, this.displayName, this.displayIcon, this.fullRender, this.swatch, this.assetPath});

  factory Chromas.fromJson(Map<String, dynamic> json) {
    return _$ChromasFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Levels {
  String? uuid;
  String? displayName;
  String? levelItem;
  String? displayIcon;
  String? streamedVideo;
  String? assetPath;

  Levels({this.uuid, this.displayName, this.levelItem, this.displayIcon, this.streamedVideo, this.assetPath});

  factory Levels.fromJson(Map<String, dynamic> json) {
    return _$LevelsFromJson(json);
  }
}
