part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class HistoryResponse {
  final String title;
  @JsonKey(name: "sub_title")
  final String? subTitle;
  final String? description;
  @JsonKey(name: "icon_path")
  final String? iconPath;
  @JsonKey(name: "from_text")
  final String? fromText;
  @JsonKey(name: "to_text")
  final String? toText;

  const HistoryResponse({
    required this.title,
    this.subTitle,
    this.description,
    this.iconPath,
    this.fromText,
    this.toText,
  });

  factory HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryResponseToJson(this);
}
