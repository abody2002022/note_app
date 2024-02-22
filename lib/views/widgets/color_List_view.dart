import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class colorListView extends StatefulWidget {
  const colorListView({
    super.key,
  });

  @override
  State<colorListView> createState() => _colorListViewState();
}

class _colorListViewState extends State<colorListView> {
  @override
  int currentindex = 0;
  List<Color> colors = [
    Color(0xffBCD8C1),
    Color(0xffD6DBB2),
    Color(0xffE3D985),
    Color(0xffE57A44),
    Color(0xff422040)
  ];
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                setState(() {});
              },
              child: colorItem(
                color: colors[index],
                isActive: currentindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
