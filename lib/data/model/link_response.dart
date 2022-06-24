part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class LinkResponse {
  @JsonKey(name: "icon_path")
  final String iconPath;
  final String? title;
  @JsonKey(name: "on_tap_url")
  final String onTapUrl;

  const LinkResponse({
    required this.iconPath,
    this.title,
    required this.onTapUrl,
  });

  factory LinkResponse.fromJson(Map<String, dynamic> json) =>
      _$LinkResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LinkResponseToJson(this);
}
