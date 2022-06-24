import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/constant.dart';
import '../../data/model/models.dart';
import '../shared/widget/underlined_text.dart';

class ConnectWithMe extends StatelessWidget {
  final ConnectWithMeResponse connectWithMe;
  const ConnectWithMe({
    Key? key,
    required this.connectWithMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UnderlineText(text: connectWithMeSectionTitle),
        _buildConnectWithMeTextWidget(text: connectWithMe.description),
        const SizedBox(height: 10),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: connectWithMe.socials.length,
          itemBuilder: (BuildContext _, int index) => Padding(
            padding: EdgeInsets.only(
              bottom: connectWithMe.socials.length - 1 == index ? 0 : 10,
            ),
            child: _buildSocialLinkWidget(
              svgIconPath: connectWithMe.socials[index].iconPath,
              text: connectWithMe.socials[index].title!,
              onTapUrl: connectWithMe.socials[index].onTapUrl,
            ),
          ),
        ),
      ],
    );
  }

  Text _buildConnectWithMeTextWidget({required String text}) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        fontStyle: FontStyle.italic,
        color: secondaryColor,
      ),
    );
  }

  Widget _buildSocialLinkWidget({
    required String svgIconPath,
    required String text,
    required String onTapUrl,
  }) {
    return Row(
      children: [
        SvgPicture.network(
          svgIconPath,
          height: 20,
          width: 20,
          color: primaryColor,
        ),
        const SizedBox(width: 20),
        Flexible(
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Text(
                text,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: secondaryColor,
                ),
              ),
              onTap: () {
                html.window.open(onTapUrl, "_blank");
              },
            ),
          ),
        ),
      ],
    );
  }
}
