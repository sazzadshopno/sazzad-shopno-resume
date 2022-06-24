import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/constant.dart';
import '../../data/model/models.dart';
import '../shared/widget/profile_photo.dart';
import '../shared/widget/underlined_text.dart';

class AboutMe extends StatelessWidget {
  final AboutMeResponse aboutMe;
  const AboutMe({Key? key, required this.aboutMe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPhotoBuilder(photoUrl: aboutMe.photoUrl),
        const SizedBox(height: 10),
        UnderlineText(text: aboutMe.name, subText: "aka ${aboutMe.nickName}"),
        _buildRoleTextWidget(role: aboutMe.role),
        const SizedBox(height: 20),
        const UnderlineText(text: aboutMeSectionTitle),
        _buildAboutMeTextWidget(text: aboutMe.description),
      ],
    );
  }

  Text _buildRoleTextWidget({required String role}) {
    return Text(
      role,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: primaryColor,
      ),
    );
  }

  Text _buildAboutMeTextWidget({required String text}) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: secondaryColor,
      ),
    );
  }
}
