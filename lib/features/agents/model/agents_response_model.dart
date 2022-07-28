import 'package:json_annotation/json_annotation.dart';

part 'agents_response_model.g.dart';

@JsonSerializable(createToJson: false)
class AgentsResponseModel {
  String? uuid;
  String? displayName;
  String? description;
  String? displayIcon;
  String? displayIconSmall;
  String? bustPortrait;
  String? fullPortrait;
  String? fullPortraitV2;
  String? killfeedPortrait;
  List<String>? backgroundGradientColors;
  String? assetPath;
  bool? isFullPortraitRightFacing;
  bool? isPlayableCharacter;
  bool? isAvailableForTest;
  bool? isBaseContent;
  Role? role;
  List<Abilities>? abilities;
  VoiceLine? voiceLine;

  AgentsResponseModel({
    this.uuid,
    this.displayName,
    this.description,
    this.displayIcon,
    this.displayIconSmall,
    this.bustPortrait,
    this.fullPortrait,
    this.fullPortraitV2,
    this.killfeedPortrait,
    this.backgroundGradientColors,
    this.assetPath,
    this.isFullPortraitRightFacing,
    this.isPlayableCharacter,
    this.isAvailableForTest,
    this.isBaseContent,
    this.role,
    this.abilities,
    this.voiceLine,
  });

  factory AgentsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AgentsResponseModelFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Role {
  String? uuid;
  String? displayName;
  String? description;
  String? displayIcon;
  String? assetPath;

  Role({this.uuid, this.displayName, this.description, this.displayIcon, this.assetPath});

  factory Role.fromJson(Map<String, dynamic> json) {
    return _$RoleFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Abilities {
  String? slot;
  String? displayName;
  String? description;
  String? displayIcon;

  Abilities({this.slot, this.displayName, this.description, this.displayIcon});

  factory Abilities.fromJson(Map<String, dynamic> json) {
    return _$AbilitiesFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class VoiceLine {
  double? minDuration;
  double? maxDuration;
  List<MediaList>? mediaList;

  VoiceLine({this.minDuration, this.maxDuration, this.mediaList});

  factory VoiceLine.fromJson(Map<String, dynamic> json) {
    return _$VoiceLineFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class MediaList {
  int? id;
  String? wwise;
  String? wave;

  MediaList({this.id, this.wwise, this.wave});

  factory MediaList.fromJson(Map<String, dynamic> json) {
    return _$MediaListFromJson(json);
  }
}
