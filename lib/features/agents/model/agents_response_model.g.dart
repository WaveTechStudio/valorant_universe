// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentsResponseModel _$AgentsResponseModelFromJson(Map<String, dynamic> json) =>
    AgentsResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
      displayIconSmall: json['displayIconSmall'] as String?,
      bustPortrait: json['bustPortrait'] as String?,
      fullPortrait: json['fullPortrait'] as String?,
      fullPortraitV2: json['fullPortraitV2'] as String?,
      killfeedPortrait: json['killfeedPortrait'] as String?,
      background: json['background'] as String?,
      backgroundGradientColors:
          (json['backgroundGradientColors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      assetPath: json['assetPath'] as String?,
      isFullPortraitRightFacing: json['isFullPortraitRightFacing'] as bool?,
      isPlayableCharacter: json['isPlayableCharacter'] as bool?,
      isAvailableForTest: json['isAvailableForTest'] as bool?,
      isBaseContent: json['isBaseContent'] as bool?,
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      voiceLine: json['voiceLine'] == null
          ? null
          : VoiceLine.fromJson(json['voiceLine'] as Map<String, dynamic>),
    );

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) => Abilities(
      slot: json['slot'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
    );

VoiceLine _$VoiceLineFromJson(Map<String, dynamic> json) => VoiceLine(
      minDuration: (json['minDuration'] as num?)?.toDouble(),
      maxDuration: (json['maxDuration'] as num?)?.toDouble(),
      mediaList: (json['mediaList'] as List<dynamic>?)
          ?.map((e) => MediaList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

MediaList _$MediaListFromJson(Map<String, dynamic> json) => MediaList(
      id: json['id'] as int?,
      wwise: json['wwise'] as String?,
      wave: json['wave'] as String?,
    );
