part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class ProjectResponse {
  final String title;
  @JsonKey(name: "sub_title")
  final String subTitle;
  final String? description;
  @JsonKey(name: "icon_path")
  final String? iconPath;
  final List<LinkResponse>? demo;

  const ProjectResponse({
    required this.title,
    required this.subTitle,
    this.description,
    this.iconPath,
    this.demo,
  });

  factory ProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectResponseToJson(this);
}
