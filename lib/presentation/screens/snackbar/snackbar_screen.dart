import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'Snackba_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estas Seguro?'),
        content: const Text('Eu enim deserunt sint proident enim excepteur. Est veniam cillum eiusmod aute aliqua ea nisi ex quis ad sunt velit. Lorem nisi ad tempor mollit eu est ex sit mollit tempor quis id. Fugiat veniam commodo nulla est dolor ad proident minim. Officia consectetur ullamco culpa fugiat minim. Sunt in ex anim Lorem enim sint id excepteur ad ad veniam dolor. Minim et consequat non esse cupidatat sit fugiat.'),
      actions: [
        TextButton(onPressed: ()=>context.pop(), child: const Text('Cancelar')),
        FilledButton(onPressed: ()=>context.pop(), child: const Text('Aceptar'))
      ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Sit cupidatat esse minim laborum culpa enim et excepteur velit. Elit incididunt reprehenderit commodo proident voluptate non ex in anim ex. Anim adipisicing ipsum ad mollit laboris excepteur excepteur amet ea qui cupidatat cupidatat aliqua quis. Mollit excepteur eiusmod esse ut aute deserunt voluptate proident ut sunt voluptate. Id fugiat cillum minim anim veniam proident eu eu. Anim officia deserunt eu eiusmod mollit reprehenderit exercitation voluptate.')
                  
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context), 
                child: const Text('Mostrar Dialogos')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
