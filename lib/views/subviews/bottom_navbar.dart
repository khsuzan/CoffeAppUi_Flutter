import 'package:coffeapp/theme/colors.dart';
import 'package:coffeapp/views/models/nav_type.dart';
import 'package:flutter/material.dart';
import 'package:coffeapp/views/models/nav_item_info.dart';

class MyBottomBar extends StatefulWidget {
  final List<NavItemInfo> navItems;
  final NavType currentIndex;

  final ValueChanged<NavType> onTap;
  const MyBottomBar(
      {required this.navItems,
      required this.currentIndex,
      required this.onTap,
      Key? key})
      : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyColor.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              widget.onTap(NavType.home);
            },
            icon: Image.asset(
              widget.navItems[0].navIcon,
              height: 24,
              width: 24,
              color: (widget.currentIndex == NavType.home)
                  ? Colors.orange
                  : MyColor.greyed,
            ),
          ),
          IconButton(
              onPressed: () {
                widget.onTap(NavType.cart);
              },
              icon: Image.asset(
                widget.navItems[1].navIcon,
                height: 24,
                width: 24,
                color: (widget.currentIndex == NavType.cart)
                    ? Colors.orange
                    : MyColor.greyed,
              )),
          IconButton(
              onPressed: () {
                widget.onTap(NavType.heart);
              },
              icon: Image.asset(
                widget.navItems[2].navIcon,
                height: 24,
                width: 24,
                color: (widget.currentIndex == NavType.heart)
                    ? Colors.orange
                    : MyColor.greyed,
              )),
          IconButton(
              onPressed: () {
                widget.onTap(NavType.bell);
              },
              icon: Image.asset(
                widget.navItems[3].navIcon,
                height: 24,
                width: 24,
                color: (widget.currentIndex == NavType.bell)
                    ? Colors.orange
                    : MyColor.greyed,
              )),
        ],
      ),
    );
  }
}
