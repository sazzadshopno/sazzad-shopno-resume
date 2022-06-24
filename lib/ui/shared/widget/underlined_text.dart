import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/constant.dart';

class UnderlineText extends StatelessWidget {
  final String text;
  final String? subText;
  const UnderlineText({Key? key, required this.text, this.subText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double indent = text.length * 7.0;

    return Column(
      children: [
        Text(
          text.toUpperCase(),
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: primaryColor,
          ),
        ),
        if (subText != null) ...[
          Text(
            subText!,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: secondaryColor,
            ),
          ),
        ],
        SizedBox(
          width: indent,
          child: const Divider(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
