import 'package:flutter/material.dart';

import '../../data/model/models.dart';
import '../shared/widget/custom_list_tile.dart';
import '../shared/widget/underlined_text.dart';

class History extends StatelessWidget {
  final String sectionTitle;
  final List<HistoryResponse> historyList;

  const History(
    this.sectionTitle, {
    Key? key,
    required this.historyList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: UnderlineText(text: sectionTitle)),
        const SizedBox(height: 10),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: historyList.length,
          itemBuilder: (BuildContext _, int index) => Padding(
            padding: EdgeInsets.only(
              bottom: historyList.length - 1 == index ? 0 : 10,
            ),
            child: CustomListTile(
              title: historyList[index].title.toUpperCase(),
              subTitle: historyList[index].subTitle,
              description: historyList[index].description,
              fromText: historyList[index].fromText,
              toText: historyList[index].toText,
              iconPath: historyList[index].iconPath,
            ),
          ),
        ),
      ],
    );
  }
}
