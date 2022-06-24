part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class PersonalInformationResponse {
  @JsonKey(name: "about_me")
  final AboutMeResponse aboutMe;
  @JsonKey(name: "connect_with_me")
  final ConnectWithMeResponse connectWithMeResponse;
  @JsonKey(name: "work_history")
  final List<HistoryResponse> workHistory;
  @JsonKey(name: "development_skill")
  final List<SkillResponse> developmentSkill;
  @JsonKey(name: "software_skill")
  final List<SkillResponse> softwareSkill;
  final List<HistoryResponse> education;
  final List<ProjectResponse> project;
  final List<HistoryResponse> certification;

  const PersonalInformationResponse({
    required this.aboutMe,
    required this.connectWithMeResponse,
    required this.workHistory,
    required this.developmentSkill,
    required this.softwareSkill,
    required this.education,
    required this.project,
    required this.certification,
  });

  factory PersonalInformationResponse.fromJson(Map<String, dynamic> json) =>
      _$PersonalInformationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PersonalInformationResponseToJson(this);
}
