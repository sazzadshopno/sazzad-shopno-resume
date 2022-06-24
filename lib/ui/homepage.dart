import 'package:flutter/material.dart';
import 'package:sazzadshopno/data/model/models.dart';
import 'package:sazzadshopno/ui/mobile/mobile_view.dart';

import '../util/responsive.dart';
import 'web/web_view.dart';

class Homepage extends StatelessWidget {
  final PersonalInformationResponse personalInformationResponse;

  const Homepage({
    Key? key,
    required this.personalInformationResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Responsive(
          mobile: MobileView(
            personalInformationResponse: personalInformationResponse,
          ),
          tablet: MobileView(
            personalInformationResponse: personalInformationResponse,
          ),
          desktop: WebView(
            personalInformationResponse: personalInformationResponse,
          ),
        ),
      ),
    );
  }
}
