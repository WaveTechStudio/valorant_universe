import 'package:json_annotation/json_annotation.dart';

part 'agents_response_model.g.dart';

@JsonSerializable(createToJson: false)
class AgentsResponseModel {
  String? displayName;
  String? description;
  String? bustPortrait;
  String? fullPortrait;
  String? fullPortraitV2;

  List<String>? backgroundGradientColors;

  Role? role;
  List<Abilities>? abilities;

  AgentsResponseModel({
    this.displayName,
    this.description,
    this.bustPortrait,
    this.fullPortrait,
    this.fullPortraitV2,
    this.backgroundGradientColors,
    this.role,
    this.abilities,
  });

  factory AgentsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AgentsResponseModelFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Role {
  String? displayName;
  String? description;
  String? displayIcon;

  Role({this.displayName, this.description, this.displayIcon});

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
