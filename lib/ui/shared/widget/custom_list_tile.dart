import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/constant.dart';
import 'custom_leading_icon.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String? description;
  final String? fromText;
  final String? toText;
  final String? iconPath;

  const CustomListTile({
    Key? key,
    required this.title,
    this.description,
    this.subTitle,
    this.fromText,
    this.toText,
    this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomLeadingIcon(
          lineHeight: 50,
          fromText: fromText,
          toText: toText,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toUpperCase(),
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: primaryColor,
                ),
              ),
              if (subTitle != null) ...[
                Text(
                  subTitle!,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: secondaryColor,
                  ),
                ),
                const SizedBox(height: 10),
              ],
              if (description != null) ...[
                Text(
                  description!,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: secondaryColor,
                  ),
                ),
              ]
            ],
          ),
        ),
        const SizedBox(width: 20),
        if (iconPath != null) ...[
          Align(
            alignment: Alignment.centerRight,
            child: Image.network(
              iconPath!,
              height: 50,
              width: 50,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
        ],
      ],
    );
  }
}
