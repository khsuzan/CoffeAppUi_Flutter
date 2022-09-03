import 'package:coffeapp/views/models/nav_type.dart';

class NavItemInfo {
  NavType navType;
  String label;
  String navIcon;
  NavItemInfo(
      {required this.navType, required this.label, required this.navIcon});
}
