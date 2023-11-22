import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollView extends StatefulWidget {
  const InfiniteScrollView({super.key});

  @override
  State<InfiniteScrollView> createState() => _InfiniteScrollViewState();
}

class _InfiniteScrollViewState extends State<InfiniteScrollView> {
  List<int> numbers = [1, 2, 3, 4, 5];
  bool isLoading = false;

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        fetchMoreImages();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void addMoreNumbers() {
    numbers.addAll(List.generate(
      5,
      (index) => numbers.last + index + 1,
    ));
  }

  Future<void> fetchMoreImages() async {
    if (isLoading) return;
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 3));
    addMoreNumbers();

    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
    scrollShortlyToBottom();
  }

  Future<void> refresh() async {
    final lastImageId = numbers.last;
    numbers.clear();
    numbers.add(lastImageId + 1);

    await fetchMoreImages();
  }

  void scrollShortlyToBottom() {
    if (scrollController.position.pixels + 120 <=
        scrollController.position.maxScrollExtent) {
      // No need to scroll to bottom because the user is not near the bottom
      return;
    }

    scrollController.animateTo(
      scrollController.position.pixels + 120,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: refresh,
          child: ListView.builder(
              controller: scrollController,
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return FadeInImage(
                    height: 250,
                    fit: BoxFit.cover,
                    placeholder:
                        const AssetImage('assets/images/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?random=$index'));
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.pop(),
          child: isLoading
              ? const CircularProgressIndicator(
                  strokeWidth: 2,
                )
              : const Icon(Icons.arrow_back_ios)),
    );
  }
}
