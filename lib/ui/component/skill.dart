import 'package:flutter/material.dart';

import '../../data/model/models.dart';
import '../../util/responsive.dart';
import '../shared/widget/custom_grid_tile.dart';
import '../shared/widget/underlined_text.dart';

class Skill extends StatelessWidget {
  final String sectionTitle;
  final List<SkillResponse> skillList;

  const Skill(
    this.sectionTitle, {
    Key? key,
    required this.skillList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final int crossAxisCount = Responsive.isDesktop(context) ? 4 : 3;
    final double childAspectRatio = width * 1.40 / (crossAxisCount * 106.66);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: UnderlineText(text: sectionTitle)),
        const SizedBox(height: 10),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
          ),
          itemBuilder: (BuildContext _, int index) => CustomGridTile(
            iconPath: skillList[index].iconPath,
            title: skillList[index].title,
          ),
          itemCount: skillList.length,
        ),
      ],
    );
  }
}
