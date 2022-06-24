part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class SkillResponse {
  @JsonKey(name: "icon_path")
  final String iconPath;
  final String title;

  const SkillResponse({
    required this.iconPath,
    required this.title,
  });

  factory SkillResponse.fromJson(Map<String, dynamic> json) =>
      _$SkillResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SkillResponseToJson(this);
}
