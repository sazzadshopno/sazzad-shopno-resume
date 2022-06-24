import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sazzadshopno/constant/constant.dart';

class CustomLeadingIcon extends StatelessWidget {
  final double lineHeight;
  final double circleRadius;
  final double thickness;
  final Color color;
  final String? fromText;
  final String? toText;

  const CustomLeadingIcon({
    Key? key,
    this.lineHeight = 30,
    this.circleRadius = 12.5,
    this.thickness = .5,
    this.color = primaryColor,
    this.fromText,
    this.toText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Column(
        children: [
          if (toText != null) ...[
            Text(
              toText!,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                fontStyle: FontStyle.italic,
                color: secondaryColor,
              ),
            ),
            const SizedBox(height: 5),
          ],
          SizedBox(
            height: lineHeight,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: VerticalDivider(
                      color: color,
                      thickness: thickness,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.circle,
                      size: circleRadius,
                      color: color,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (fromText != null) ...[
            const SizedBox(height: 5),
            Text(
              fromText!,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                fontStyle: FontStyle.italic,
                color: secondaryColor,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
