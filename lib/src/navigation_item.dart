import 'package:flutter/material.dart' show Widget;

class NavigationItem {
  final String title;
  final Widget icon;
  final Function onPressed;

  NavigationItem(
    this.title,
    this.icon,
    this.onPressed,
  );
}
