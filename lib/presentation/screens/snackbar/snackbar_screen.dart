import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBack = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBack);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas Seguro?'),
        content: const Text(
            'Proident ad fugiat elit mollit labore pariatur consequat ut et ad do. Cupidatat consequat Lorem est cillum quis labore. In sint ut excepteur sint anim mollit irure irure. Tempor est velit reprehenderit commodo elit aute Lorem ex excepteur.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),

          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
        ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'VSit veniam minim occaecat nulla adipisicing sit. Labore mollit occaecat ad consequat. Duis elit qui fugiat pariatur magna cupidatat ea aliqua. Laboris nostrud amet officia anim do id culpa.eniam sunt nostrud enim cupidatat mollit et dolore do est.')
                ]);
              },
              child: const Text('Licencias usadas')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogo'))
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
