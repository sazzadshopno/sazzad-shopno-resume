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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          AboutMe(aboutMe: personalInformationResponse.aboutMe),
          const SizedBox(height: 10),
          History(
            workHistorySectionTitle,
            historyList: personalInformationResponse.workHistory,
          ),
          const SizedBox(height: 10),
          Skill(
            developmentSkillSectionTitle,
            skillList: personalInformationResponse.developmentSkill,
          ),
          const SizedBox(height: 10),
          Skill(
            softwareSkillSectionTitle,
            skillList: personalInformationResponse.softwareSkill,
          ),
          const SizedBox(height: 10),
          Project(
            projectList: personalInformationResponse.project,
          ),
          const SizedBox(height: 10),
          History(
            educationSectionTitle,
            historyList: personalInformationResponse.education,
          ),
          const SizedBox(height: 10),
          History(
            certificationSectionTitle,
            historyList: personalInformationResponse.certification,
          ),
          const SizedBox(height: 10),
          ConnectWithMe(
            connectWithMe: personalInformationResponse.connectWithMeResponse,
          ),
        ],
      ),
    );
  }
}
