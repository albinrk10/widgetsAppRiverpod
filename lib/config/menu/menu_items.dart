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
    title: 'Riverpod Counter ',
    subTitle: 'Listas infinitas ypull to refresh ',
    link: '/counter',
    icon: Icons.add ),
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
    MenuItem(
    title: 'Animated container',
    subTitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded    ),
    MenuItem(
    title: 'UI controls + Tiles',
    subTitle: 'Una serie de controles de Flutter ',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined   ),
    MenuItem(
    title: 'Introducion a la aplicacion',
    subTitle: 'Tutorial para la app ',
    link: '/tutorial',
    icon: Icons.accessible_rounded   ),
    MenuItem(
    title: 'InfiniteScroll y Pull',
    subTitle: 'Listas infinitas ypull to refresh ',
    link: '/infinite',
    icon: Icons.list_alt_rounded   ),
    MenuItem(
    title: 'Cambiar tema',
    subTitle: 'Cambiar tema del aplicativo ',
    link: '/theme-change',
    icon: Icons.color_lens   ),
    
];
