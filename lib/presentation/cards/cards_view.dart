import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<Map<String, dynamic>> cards = [
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cards'),
        ),
        body: ListView(children: [
          ...cards.map((card) => CardType1(
                elevation: card['elevation'],
                label: card['label'],
              )),
          ...cards.map((card) => CardType2(
                elevation: card['elevation'],
                label: card['label'],
              )),
          ...cards.map((card) => CardType3(
                elevation: card['elevation'],
                label: card['label'],
              )),
          ...cards.map((card) => CardType4(
                elevation: card['elevation'],
                label: card['label'],
              ))
        ]),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {
              context.pop();
            }));
  }
}

class CardType1 extends StatelessWidget {
  const CardType1({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: elevation,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            child: Column(children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      icon: const Icon(Icons.more_vert), onPressed: () {})),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  label,
                  style: const TextStyle(fontSize: 16),
                ),
              )
            ])));
  }
}

class CardType2 extends StatelessWidget {
  const CardType2({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Colors.grey,
            )),
        elevation: elevation,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            child: Column(children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      icon: const Icon(Icons.more_vert), onPressed: () {})),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '$label - Outline',
                  style: const TextStyle(fontSize: 16),
                ),
              )
            ])));
  }
}

class CardType3 extends StatelessWidget {
  const CardType3({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Card(
        color: color.surfaceVariant,
        elevation: elevation,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            child: Column(children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      icon: const Icon(Icons.more_vert), onPressed: () {})),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '$label - Filled',
                  style: const TextStyle(fontSize: 16),
                ),
              )
            ])));
  }
}

class CardType4 extends StatelessWidget {
  const CardType4({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: elevation,
        child: Stack(
          children: [
            Image.network(
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Column(children: [
                Expanded(
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                            )),
                        child: IconButton(
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {}),
                      )),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    '$label - Image',
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        ));
  }
}
