import 'package:flutter/material.dart';
import 'package:tw/core/tw/fcontainer.dart';
import 'package:tw/core/tw/ftext.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: FContainer(
        q: "schild text-center w-full",
        children: [
          FContainer(
            q: "bg-red-500 w-75% text-white rounded-lg p-4 mb-4 shadow-lg rd-16 text-right",
            children: [
              FText(
                "Hello",
              ),
              FText(
                "World",
                q: "text-white text-lg font-bold",
              ),
            ],
          ),
          FContainer(
            q: "bg-blue-500 w-75% text-left rounded-lg p-4 mb-4 shadow-lg rd-16 text-right row",
            children: [
              FText(
                "Hello",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "World",
                q: "text-white text-lg font-bold",
              ),
            ],
          ),
          FContainer(
            q: "bg-blue-500 w-75% text-left rounded-lg p-4 mb-4 shadow-lg rd-16 text-right wrap",
            children: [
              FText(
                "Hello",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "World",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "World",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "XX",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "YYYY",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "ZZZ",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "TRRR",
                q: "text-white text-lg font-bold",
              ),
            ],
          ),
          FContainer(
            q: "bg-blue-500 w-75% text-left rounded-lg p-4 mb-4 shadow-lg rd-16 text-right stack",
            children: [
              FText(
                "Hello",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "World",
                q: "text-white text-lg font-bold",
              ),
            ],
          ),
          FContainer(
            q: "bg-blue-500 w-75% text-left rounded-lg p-4 mb-4 shadow-lg rd-16 text-right list",
            children: [
              FText(
                "Hello",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "World",
                q: "text-white text-lg font-bold",
              ),
            ],
          ),
          FContainer(
            q: "bg-orange-500 w-full text-left rounded-lg p-4 mb-4 shadow-lg rd-16 text-right grid gap-x-6",
            children: [
              FContainer(
                q: "h-100 w-100 bg-blue-200",
                children: [],
              ),
              FContainer(
                q: "h-100 w-100 bg-red-300",
                children: [],
              ),
              FContainer(
                q: "h-100 w-100 bg-green",
                children: [],
              ),
              FContainer(
                q: "h-100 w-100 bg-black rd-16",
                children: [],
              ),
            ],
          ),
          FContainer(
            q: "bg-green-500 w-full text-left text-white rounded-lg p-4 mb-4 shadow-xs rd-16 text-right text-sm",
            children: [
              FText(
                "Hello",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "World",
                q: "text-white text-lg font-bold",
              ),
            ],
          ),
          FContainer(
            q: "bg-green-500 w-full text-white rounded-lg p-4 mb-4 shadow-xs rd-16 text-right text-2xl",
            children: [
              FText(
                "Hello",
                q: "text-white text-lg font-bold",
              ),
              FText(
                "World",
                q: "text-white text-lg font-bold",
              ),
            ],
          ),
          FContainer(
            q: "bg-green-500 w-200 text-white rounded-lg p-4 mb-4 shadow-xs rd-16 text-left text-2xl",
            children: [
              FText(
                "Helasfsslo",
                q: "text-white text-lg",
              ),
              FText(
                "World",
                q: "text-white text-lg font-bold",
              ),
            ],
          ),
          FContainer(
            q: "bg-yellow-900 p-4 rd-12 sd-lg w-30% text-2xl text-red-50 text-right shadow-xs",
            children: [
              Text(
                "Deden",
              ),
              FText(
                "World",
                q: "text-white text-lg font-bold",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
