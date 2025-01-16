// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'parsers.dart';

class FContainer extends StatelessWidget {
  final String q;
  final List<Widget> children;

  FContainer({required this.q, required this.children});

  @override
  Widget build(BuildContext context) {
    final styles = parseTailwindStyles(context, q);

    final arr = q.split(" ");
    bool isRow = arr.contains("row");
    bool isWrap = arr.contains("wrap");
    bool isStack = arr.contains("stack");
    bool isSingleChildScrollView = arr.contains("schild");
    bool isListView = arr.contains("list");
    bool isGridView = arr.contains("grid");

    late Widget widget;

    if (isRow) {
      widget = Row(
        crossAxisAlignment:
            styles['crossAxisAlignment'] ?? CrossAxisAlignment.start,
        spacing: styles['spacing'],
        children: children,
      );
    } else if (isWrap) {
      widget = Wrap(
        // crossAxisAlignment:
        //     styles['crossAxisAlignment'] ?? CrossAxisAlignment.start,
        spacing: styles['x-spacing'],
        runSpacing: styles['y-spacing'],
        children: children,
      );
    } else if (isStack) {
      widget = Stack(
        children: children,
      );
    } else if (isListView) {
      widget = ListView(
        shrinkWrap: true,
        children: children,
      );
    } else if (isGridView) {
      widget = GridView(
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0,
          crossAxisCount: 4,
          mainAxisSpacing: styles['y-spacing'],
          crossAxisSpacing: styles['x-spacing'],
        ),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: children,
      );
    } else if (isSingleChildScrollView) {
      widget = SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              styles['crossAxisAlignment'] ?? CrossAxisAlignment.start,
          spacing: styles['spacing'],
          children: children,
        ),
      );
    } else {
      widget = Column(
        crossAxisAlignment:
            styles['crossAxisAlignment'] ?? CrossAxisAlignment.start,
        spacing: styles['spacing'],
        children: children,
      );
    }
    return Container(
      margin: styles['margin'],
      padding: styles['padding'],
      width: styles['width'],
      height: styles['height'],
      decoration: BoxDecoration(
        color: styles['bgColor'],
        borderRadius: styles['borderRadius'],
        boxShadow: styles['boxShadow'],
        border: styles['border'],
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: styles['fontSize'],
          color: styles['textColor'], // Implementing textColor
        ),
        child: widget,
      ),
    )
        .animate()
        .move(
          duration: Duration(milliseconds: 500),
          begin: Offset(30, 0),
        )
        .fadeIn(
          duration: Duration(milliseconds: 500),
        )
        .shimmer(
          duration: Duration(milliseconds: 500),
        );
  }
}
