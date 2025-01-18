import 'package:flutter/material.dart';
import 'package:tw/core/tw/fcontainer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ValueNotifier<bool> selected = ValueNotifier(false);
  ScrollController scrollController = ScrollController();
  temporarySelect() async {
    selected.value = true;
    await Future.delayed(const Duration(seconds: 1));
    selected.value = false;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      // PreviewWidget(),

      ValueListenableBuilder(
        valueListenable: selected,
        builder: (context, __, _) {
          return FContainer(
            q: "grid grid-cols-2 grid-ar-1.0 gap-4 bg-${selected.value ? "red" : "blue"}-100 p-12",
            children: [
              InkWell(
                onTap: () => temporarySelect(),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ],
          );
        },
      ),
      FContainer(
        q: "h-400",
        child: FContainer(
          q: "list gap-12 bg-purple p-20",
          // controller: scrollController,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "$index",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
      FContainer(
        q: "list axis-x h-100 gap-12 bg-purple",
        controller: scrollController,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.yellow,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
          ),
        ],
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          //scroll to end
          scrollController.animateTo(
            scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
          );
        },
        child: const Text("Test Horizontal List Sroll"),
      ),
      FContainer(
        q: "list gap-12 bg-purple",
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.yellow,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
          ),
        ],
      ),
      FContainer(
        q: "stack w-full bg-yellow-100 h-300",
        children: [
          FContainer(
            q: "left-10 top-10 right-10 bottom-10 bg-blue rd-12 shadow-lg",
            children: [],
          ),
        ],
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: FContainer(
        q: "schild p-12 gap-12",
        children: children,
      ),
    );
  }
}
