// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentsResponseModel _$AgentsResponseModelFromJson(Map<String, dynamic> json) =>
    AgentsResponseModel(
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      bustPortrait: json['bustPortrait'] as String?,
      fullPortrait: json['fullPortrait'] as String?,
      fullPortraitV2: json['fullPortraitV2'] as String?,
      backgroundGradientColors:
          (json['backgroundGradientColors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
    );

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) => Abilities(
      slot: json['slot'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
    );
