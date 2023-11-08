import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_button.dart';

class ButtonsView extends StatelessWidget {
  const ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
              const ElevatedButton(
                  onPressed: null, child: Text('Elevated Disabled')),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('Elevated Icon')),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.abc_sharp),
                  label: const Text('Filled Icon')),
              OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.abc_sharp),
                label: const Text('Outlined Icon'),
              ),
              TextButton(onPressed: () {}, child: const Text('Text')),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarms_outlined),
                label: const Text('Text Icon'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_a_photo),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color.primary),
                  foregroundColor: MaterialStateProperty.all(color.onPrimary),
                ),
              ),
              const CustomButton(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            context.pop();
          }),
    );
  }
}
