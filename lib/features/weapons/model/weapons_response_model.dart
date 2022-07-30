import 'package:json_annotation/json_annotation.dart';

part 'weapons_response_model.g.dart';

@JsonSerializable(createToJson: false)
class WeaponsResponseModel {
  String? displayName;
  String? category;
  String? displayIcon;
  WeaponStats? weaponStats;

  WeaponsResponseModel({
    this.displayName,
    this.category,
    this.displayIcon,
    this.weaponStats,
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
      this.damageRanges});

  factory WeaponStats.fromJson(Map<String, dynamic> json) {
    return _$WeaponStatsFromJson(json);
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
