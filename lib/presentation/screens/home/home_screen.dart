import 'package:flutter/material.dart';
import 'package:widgets_albin/config/menu/menu_items.dart';
import 'package:widgets_albin/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _Homeview(),
    );
  }
}

class _Homeview extends StatelessWidget {
  const _Homeview();

  @override
  Widget build(BuildContext context) {
    //Text('nombre');
    //LisTitle
    return ListView.builder(
        itemCount: appMenuIteams.length,
        itemBuilder: (context, index) {
          final menuItem = appMenuIteams[index];
          return _CustomListTitle(menuItem: menuItem);
        });
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen(),
        //   ),
        // );
        Navigator.pushNamed(context, menuItem.link);
      },
      
    );
  }
}
