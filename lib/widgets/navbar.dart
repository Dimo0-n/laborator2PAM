import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar navBar({required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(title, style: const TextStyle(color: Colors.black)),
    leading: IconButton(
      icon: SvgPicture.asset(
        'assets/lateral_menu.svg',
        width: 52,
        height: 52,
      ),
      onPressed: () {
        // logica pentru meniul lateral
      },
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          'assets/notification.svg',
          width: 52,
          height: 52,
        ),
        onPressed: () {
          // logica pentru notificări
        },
      ),
    ],
  );
}
