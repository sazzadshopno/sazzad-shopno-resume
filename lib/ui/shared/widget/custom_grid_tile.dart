import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/constant.dart';

class CustomGridTile extends StatelessWidget {
  final String title, iconPath;

  const CustomGridTile({
    Key? key,
    required this.title,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.network(
          iconPath,
          height: 20,
          width: 20,
        ),
        const SizedBox(height: 10),
        Text(
          title.toUpperCase(),
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 10,
            color: secondaryColor,
          ),
        )
      ],
    );
  }
}
