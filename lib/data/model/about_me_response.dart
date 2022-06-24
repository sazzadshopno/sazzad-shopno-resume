part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class AboutMeResponse {
  final String name;
  @JsonKey(name: "nick_name")
  final String nickName;
  final String description;
  final String role;
  final String photoUrl;

  const AboutMeResponse({
    required this.name,
    required this.nickName,
    required this.description,
    required this.role,
    required this.photoUrl,
  });

  factory AboutMeResponse.fromJson(Map<String, dynamic> json) =>
      _$AboutMeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AboutMeResponseToJson(this);
}
