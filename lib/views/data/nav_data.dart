import 'package:coffeapp/views/models/nav_type.dart';
import 'package:coffeapp/views/models/nav_item_info.dart';

final List<NavItemInfo> navData = [
  NavItemInfo(
      navType: NavType.home, label: "Home", navIcon: 'icons/ic_home.png'),
  NavItemInfo(
      navType: NavType.cart, label: "Cart", navIcon: 'icons/ic_cart.png'),
  NavItemInfo(
      navType: NavType.heart,
      label: "Favourite",
      navIcon: 'icons/ic_heart.png'),
  NavItemInfo(
      navType: NavType.bell,
      label: "Notification",
      navIcon: 'icons/ic_bell.png'),
];
final List coffeTypeList = [
  'Cappucino',
  'Latte',
  'Black',
  'Milk',
];
