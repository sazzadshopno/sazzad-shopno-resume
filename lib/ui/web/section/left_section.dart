import 'package:flutter/material.dart';

class LeftSection extends StatelessWidget {
  final List<Widget> children;
  const LeftSection({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    return SizedBox(
      width: screenWidth * .25,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: children.length,
          itemBuilder: (BuildContext _, int index) => Padding(
            padding: EdgeInsets.only(
              bottom: children.length - 1 == index ? 0 : 20,
            ),
            child: children[index],
          ),
        ),
      ),
    );
  }
}
