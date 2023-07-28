import 'package:flutter/material.dart';

class MenuItem {
  final String titles;
  final String subTitles;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.titles,
    required this.subTitles,
    required this.link,
    required this.icon
  });
}

const appMenuItems = <MenuItem>[

  MenuItem(
    titles: 'Botones',
    subTitles: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    titles: 'Tarjetas',
    subTitles: 'Un contenedor estilizado',
    link: '/card',
    icon: Icons.credit_card
  ),

];
