import 'dart:ffi';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Slide {
  Slide({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  final String title;
  final String description;
  final String imageUrl;
}

List<Slide> slides = [
  Slide(
      title: 'Busca tu comida favorita',
      description:
          'Consectetur in aute ipsum ut cillum minim tempor minim aute ad esse proident in.',
      imageUrl: 'assets/images/1.png'),
  Slide(
      title: 'Entrega inmediata',
      description: 'Nulla culpa nisi quis laboris ad ad.',
      imageUrl: 'assets/images/2.png'),
  Slide(
      title: 'Disfruta la comida',
      description:
          'Laborum excepteur ad adipisicing ut laboris deserunt sunt mollit ullamco deserunt elit consectetur.',
      imageUrl: 'assets/images/3.png'),
];

class AppTutorialView extends StatefulWidget {
  const AppTutorialView({super.key});

  @override
  State<AppTutorialView> createState() => _AppTutorialViewState();
}

class _AppTutorialViewState extends State<AppTutorialView> {
  final pageViewController = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      final currentPage = pageViewController.page;
      if (currentPage != null) {
        if (currentPage >= slides.length - 1.5 && !isLastPage) {
          setState(() {
            isLastPage = true;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: pageViewController,
              children: slides
                  .map((slide) => _SlideItem(
                        title: slide.title,
                        description: slide.description,
                        imageUrl: slide.imageUrl,
                      ))
                  .toList(),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                  onPressed: () => context.pop(), child: const Text('Omitir')),
            ),
            if (isLastPage)
              Positioned(
                bottom: 50,
                right: 20,
                child: FadeIn(
                  child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Comenzar')),
                ),
              ),
          ],
        ));
  }
}

class _SlideItem extends StatelessWidget {
  const _SlideItem({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final titleStyle = textTheme.titleLarge;
    final descriptionStyle = textTheme.bodyMedium;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(imageUrl),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: titleStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(description, textAlign: TextAlign.center, style: descriptionStyle),
      ]),
    );
  }
}
