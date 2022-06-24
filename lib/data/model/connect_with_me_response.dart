part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class ConnectWithMeResponse {
  final String description;
  final List<LinkResponse> socials;

  const ConnectWithMeResponse({
    required this.description,
    required this.socials,
  });

  factory ConnectWithMeResponse.fromJson(Map<String, dynamic> json) =>
      _$ConnectWithMeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectWithMeResponseToJson(this);
}
