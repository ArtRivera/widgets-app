import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarView extends StatelessWidget {
  const SnackbarView({super.key});

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('This is a snackbar'),
    ));
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('The content of the dialog description'),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Cancel'),
            ),
            FilledButton(
                onPressed: () => context.pop(), child: const Text('OK')),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbars and dialogs'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context);
                },
                child: const Text('License')),
            FilledButton.tonal(
                onPressed: () {
                  _showDialog(context);
                },
                child: const Text('Custom Dialog')),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.notifications_active),
            onPressed: () => _showSnackbar(context)));
  }
}
