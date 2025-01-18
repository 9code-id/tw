import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tw/core/tw/fcontainer.dart';
import 'package:tw/core/tw/ftext.dart';
import 'package:tw/preview.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      PreviewWidget(),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0), // Use consistent padding
          child: Column(
            spacing: 16.0, // Use consistent spacing
            children: children,
          ),
        ),
      ),
    );
  }
}
