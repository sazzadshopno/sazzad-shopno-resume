import 'package:flutter/material.dart';
import 'package:sazzadshopno/data/model/models.dart';

import '../../constant/constant.dart';
import '../component/about_me.dart';
import '../component/connect_with_me.dart';
import '../component/history.dart';
import '../component/project.dart';
import '../component/skill.dart';
import 'section/left_section.dart';
import 'section/right_section.dart';

class WebView extends StatelessWidget {
  final PersonalInformationResponse personalInformationResponse;

  const WebView({
    Key? key,
    required this.personalInformationResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LeftSection(
          children: [
            AboutMe(aboutMe: personalInformationResponse.aboutMe),
            ConnectWithMe(
              connectWithMe: personalInformationResponse.connectWithMeResponse,
            ),
          ],
        ),
        RightSection(
          children: [
            History(
              workHistorySectionTitle,
              historyList: personalInformationResponse.workHistory,
            ),
            Skill(
              developmentSkillSectionTitle,
              skillList: personalInformationResponse.developmentSkill,
            ),
            Skill(
              softwareSkillSectionTitle,
              skillList: personalInformationResponse.softwareSkill,
            ),
            Project(
              projectList: personalInformationResponse.project,
            ),
            History(
              educationSectionTitle,
              historyList: personalInformationResponse.education,
            ),
            History(
              certificationSectionTitle,
              historyList: personalInformationResponse.certification,
            ),
          ],
        ),
      ],
    );
  }
}
