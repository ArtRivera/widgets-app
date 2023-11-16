import 'package:flutter/material.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress indicators"),
      ),
      body: const Center(
        child: Column(children: [
          Text("Circular Progress Indicator"),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black38,
          ),
          SizedBox(
            height: 10,
          ),
          Text("Circular Progress and Linear Controlled"),
          SizedBox(
            height: 10,
          ),
          _ControlledProgressIndicator(),
        ]),
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
        stream:
            Stream.periodic(const Duration(milliseconds: 100), (i) => i / 100)
                .takeWhile((element) => element <= 100),
        builder: (context, snapshot) {
          final value = snapshot.data ?? 0;
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircularProgressIndicator(
                value: value,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: LinearProgressIndicator(
                value: value,
              ))
            ]),
          );
        });
  }
}
