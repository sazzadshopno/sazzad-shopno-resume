// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutMeResponse _$AboutMeResponseFromJson(Map<String, dynamic> json) =>
    AboutMeResponse(
      name: json['name'] as String,
      nickName: json['nick_name'] as String,
      description: json['description'] as String,
      role: json['role'] as String,
      photoUrl: json['photoUrl'] as String,
    );

Map<String, dynamic> _$AboutMeResponseToJson(AboutMeResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nick_name': instance.nickName,
      'description': instance.description,
      'role': instance.role,
      'photoUrl': instance.photoUrl,
    };

ConnectWithMeResponse _$ConnectWithMeResponseFromJson(
        Map<String, dynamic> json) =>
    ConnectWithMeResponse(
      description: json['description'] as String,
      socials: (json['socials'] as List<dynamic>)
          .map((e) => LinkResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConnectWithMeResponseToJson(
        ConnectWithMeResponse instance) =>
    <String, dynamic>{
      'description': instance.description,
      'socials': instance.socials.map((e) => e.toJson()).toList(),
    };

HistoryResponse _$HistoryResponseFromJson(Map<String, dynamic> json) =>
    HistoryResponse(
      title: json['title'] as String,
      subTitle: json['sub_title'] as String?,
      description: json['description'] as String?,
      iconPath: json['icon_path'] as String?,
      fromText: json['from_text'] as String?,
      toText: json['to_text'] as String?,
    );

Map<String, dynamic> _$HistoryResponseToJson(HistoryResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sub_title': instance.subTitle,
      'description': instance.description,
      'icon_path': instance.iconPath,
      'from_text': instance.fromText,
      'to_text': instance.toText,
    };

LinkResponse _$LinkResponseFromJson(Map<String, dynamic> json) => LinkResponse(
      iconPath: json['icon_path'] as String,
      title: json['title'] as String?,
      onTapUrl: json['on_tap_url'] as String,
    );

Map<String, dynamic> _$LinkResponseToJson(LinkResponse instance) =>
    <String, dynamic>{
      'icon_path': instance.iconPath,
      'title': instance.title,
      'on_tap_url': instance.onTapUrl,
    };

PersonalInformationResponse _$PersonalInformationResponseFromJson(
        Map<String, dynamic> json) =>
    PersonalInformationResponse(
      aboutMe:
          AboutMeResponse.fromJson(json['about_me'] as Map<String, dynamic>),
      connectWithMeResponse: ConnectWithMeResponse.fromJson(
          json['connect_with_me'] as Map<String, dynamic>),
      workHistory: (json['work_history'] as List<dynamic>)
          .map((e) => HistoryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      developmentSkill: (json['development_skill'] as List<dynamic>)
          .map((e) => SkillResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      softwareSkill: (json['software_skill'] as List<dynamic>)
          .map((e) => SkillResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      education: (json['education'] as List<dynamic>)
          .map((e) => HistoryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      project: (json['project'] as List<dynamic>)
          .map((e) => ProjectResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      certification: (json['certification'] as List<dynamic>)
          .map((e) => HistoryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonalInformationResponseToJson(
        PersonalInformationResponse instance) =>
    <String, dynamic>{
      'about_me': instance.aboutMe.toJson(),
      'connect_with_me': instance.connectWithMeResponse.toJson(),
      'work_history': instance.workHistory.map((e) => e.toJson()).toList(),
      'development_skill':
          instance.developmentSkill.map((e) => e.toJson()).toList(),
      'software_skill': instance.softwareSkill.map((e) => e.toJson()).toList(),
      'education': instance.education.map((e) => e.toJson()).toList(),
      'project': instance.project.map((e) => e.toJson()).toList(),
      'certification': instance.certification.map((e) => e.toJson()).toList(),
    };

ProjectResponse _$ProjectResponseFromJson(Map<String, dynamic> json) =>
    ProjectResponse(
      title: json['title'] as String,
      subTitle: json['sub_title'] as String,
      description: json['description'] as String?,
      iconPath: json['icon_path'] as String?,
      demo: (json['demo'] as List<dynamic>?)
          ?.map((e) => LinkResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProjectResponseToJson(ProjectResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sub_title': instance.subTitle,
      'description': instance.description,
      'icon_path': instance.iconPath,
      'demo': instance.demo?.map((e) => e.toJson()).toList(),
    };

SkillResponse _$SkillResponseFromJson(Map<String, dynamic> json) =>
    SkillResponse(
      iconPath: json['icon_path'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$SkillResponseToJson(SkillResponse instance) =>
    <String, dynamic>{
      'icon_path': instance.iconPath,
      'title': instance.title,
    };
