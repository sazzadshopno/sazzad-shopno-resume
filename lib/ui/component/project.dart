import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/model/models.dart';
import '../shared/widget/custom_list_tile.dart';
import '../shared/widget/underlined_text.dart';

class Project extends StatelessWidget {
  final List<ProjectResponse> projectList;
  const Project({Key? key, required this.projectList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(child: UnderlineText(text: "Project")),
        const SizedBox(height: 10),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: projectList.length,
          itemBuilder: (BuildContext _, int index) => Padding(
            padding: EdgeInsets.only(
              bottom: projectList.length - 1 == index ? 0 : 10,
            ),
            child: Column(
              children: [
                CustomListTile(
                  title: projectList[index].title.toUpperCase(),
                  subTitle: projectList[index].subTitle,
                  description: projectList[index].description,
                  iconPath: projectList[index].iconPath,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 70, top: 5),
                    child: Row(
                      children: _buildLinkChildren(projectList[index].demo),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildLinkChildren(List<LinkResponse>? link) {
    if (link == null) return [];

    List<Widget> widgets = [];
    for (int index = 0; index < link.length; index++) {
      widgets.add(
        Padding(
          padding: EdgeInsets.only(
            right: link.length - 1 == index ? 0 : 10,
          ),
          child: _buildTappableIconButton(
            iconPath: link[index].iconPath,
            onTapUrl: link[index].onTapUrl,
          ),
        ),
      );
    }
    return widgets;
  }

  MouseRegion _buildTappableIconButton(
      {required String iconPath, required String onTapUrl}) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: SvgPicture.network(
          iconPath,
          height: 30,
          width: 30,
        ),
        onTap: () {
          html.window.open(onTapUrl, "_blank");
        },
      ),
    );
  }
}
