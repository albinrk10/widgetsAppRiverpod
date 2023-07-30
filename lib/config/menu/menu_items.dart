import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuIteams = <MenuItem>[ 
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
    ),
    MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contendor estilizado',
    link: '/cards',
    icon: Icons.credit_card
    ),
     MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'General y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded    ),
    MenuItem(
    title: 'Snackbars y dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline    ),
];
