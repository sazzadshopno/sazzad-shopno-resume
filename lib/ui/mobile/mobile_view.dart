import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../data/model/models.dart';
import '../component/about_me.dart';
import '../component/connect_with_me.dart';
import '../component/history.dart';
import '../component/project.dart';
import '../component/skill.dart';

class MobileView extends StatelessWidget {
  final PersonalInformationResponse personalInformationResponse;

  const MobileView({
    Key? key,
    required this.personalInformationResponse,
  }) : super(key: key);

  final double sizedBoxHeight = 30;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          AboutMe(aboutMe: personalInformationResponse.aboutMe),
          SizedBox(height: sizedBoxHeight),
          History(
            workHistorySectionTitle,
            historyList: personalInformationResponse.workHistory,
          ),
          SizedBox(height: sizedBoxHeight),
          Skill(
            developmentSkillSectionTitle,
            skillList: personalInformationResponse.developmentSkill,
          ),
          SizedBox(height: sizedBoxHeight),
          Skill(
            softwareSkillSectionTitle,
            skillList: personalInformationResponse.softwareSkill,
          ),
          SizedBox(height: sizedBoxHeight),
          Project(
            projectList: personalInformationResponse.project,
          ),
          SizedBox(height: sizedBoxHeight),
          History(
            educationSectionTitle,
            historyList: personalInformationResponse.education,
          ),
          SizedBox(height: sizedBoxHeight),
          History(
            certificationSectionTitle,
            historyList: personalInformationResponse.certification,
          ),
          SizedBox(height: sizedBoxHeight),
          ConnectWithMe(
            connectWithMe: personalInformationResponse.connectWithMeResponse,
          ),
        ],
      ),
    );
  }
}
