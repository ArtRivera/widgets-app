import 'package:flutter/material.dart';

class UIControlsView extends StatelessWidget {
  const UIControlsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI controls"),
      ),
      body: const _UiWidgets(),
    );
  }
}

enum Transportation { car, plane, boat, train }

class _UiWidgets extends StatefulWidget {
  const _UiWidgets({super.key});

  @override
  State<_UiWidgets> createState() => _UiWidgetsState();
}

class _UiWidgetsState extends State<_UiWidgets> {
  bool isDeveloper = true;
  Transportation transportation = Transportation.car;

  bool isBreakFastIncluded = false;
  bool isLunchIncluded = false;
  bool isDinnerIncluded = false;

  @override
  Widget build(BuildContext context) {
    return ListView(physics: const ClampingScrollPhysics(), children: [
      SwitchListTile(
          title: const Text("Developer Mode"),
          subtitle: const Text("Enable or disable developer mode"),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          }),
      ExpansionTile(
          title: Text("Choose your transportation"),
          subtitle: Text("Your selection: ${transportation.name}"),
          children: [
            RadioListTile(
                title: const Text("Car"),
                value: Transportation.car,
                groupValue: transportation,
                onChanged: (value) {
                  setState(() {
                    transportation = value!;
                  });
                }),
            RadioListTile(
                title: const Text("Plane"),
                value: Transportation.plane,
                groupValue: transportation,
                onChanged: (value) {
                  setState(() {
                    transportation = value!;
                  });
                }),
            RadioListTile(
                title: const Text("Boat"),
                value: Transportation.boat,
                groupValue: transportation,
                onChanged: (value) {
                  setState(() {
                    transportation = value!;
                  });
                }),
            RadioListTile(
                title: const Text("Train"),
                value: Transportation.train,
                groupValue: transportation,
                onChanged: (value) {
                  setState(() {
                    transportation = value!;
                  });
                })
          ]),
      CheckboxListTile(
          title: const Text("Do you include breakfast?"),
          value: isBreakFastIncluded,
          onChanged: (value) {
            setState(() {
              isBreakFastIncluded = !isBreakFastIncluded;
            });
          }),
      CheckboxListTile(
          title: const Text("Do you include lunch?"),
          value: isLunchIncluded,
          onChanged: (value) {
            setState(() {
              isLunchIncluded = !isLunchIncluded;
            });
          }),
      CheckboxListTile(
          title: const Text("Do you include dinner?"),
          value: isDinnerIncluded,
          onChanged: (value) {
            setState(() {
              isDinnerIncluded = !isDinnerIncluded;
            });
          })
    ]);
  }
}
