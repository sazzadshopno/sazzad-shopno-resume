import 'package:flutter/material.dart';

import '../../../constant/constant.dart';

class CircularPhotoBuilder extends StatelessWidget {
  final String photoUrl;
  final double height, width;

  const CircularPhotoBuilder({
    Key? key,
    required this.photoUrl,
    this.height = 150,
    this.width = 150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: const [
          BoxShadow(
            offset: Offset(-1, -1),
            blurRadius: 3,
            color: primaryColor,
          ),
        ],
        image: DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage(photoUrl),
        ),
      ),
    );
  }
}
