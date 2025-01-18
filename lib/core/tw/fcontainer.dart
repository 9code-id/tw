// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'parsers.dart';

class FContainer extends StatelessWidget {
  final String q;
  final List<Widget> children;

  FContainer({
    required this.children,
    this.q = "",
  });

  @override
  Widget build(BuildContext context) {
    final styles = parseTailwindStyles(context, q);

    bool isRow = q.matchContains("row");
    bool isWrap = q.matchContains("wrap");
    bool isStack = q.matchContains("stack");
    bool isSingleChildScrollView = q.matchContains("schild");
    bool isListView = q.matchContains("list");
    bool isGridView = q.matchContains("grid");
    bool isPositioned = styles['positioned'] != null;

    late Widget widget;
    double? spacing = styles['spacing'];
    double? spacingX = styles['x-spacing'];
    double? spacingY = styles['y-spacing'];

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
        spacing: spacing ?? (spacingX ?? 0.0),
        runSpacing: spacing ?? (spacingY ?? 0.0),
        children: children,
      );
    } else if (isStack) {
      widget = Stack(
        children: children,
      );
    } else if (isListView) {
      widget = ListView.separated(
        shrinkWrap: true,
        itemCount: children.length,
        separatorBuilder: (context, index) => SizedBox(height: spacing ?? 0.0),
        itemBuilder: (context, index) => children[index],
      );
    } else if (isGridView) {
      int crossAxisCount = q.intValueOf("grid-cols-") ?? 2;
      widget = GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0,
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: spacing ?? (spacingX ?? 0.0),
          mainAxisSpacing: spacing ?? (spacingY ?? 0.0),
        ),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: children.length,
        itemBuilder: (context, index) => children[index],
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

    final container = Container(
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
    );

    late Widget finalWidget;
    if (isPositioned) {
      finalWidget = Positioned(
        left: styles['positioned']['left'],
        right: styles['positioned']['right'],
        top: styles['positioned']['top'],
        bottom: styles['positioned']['bottom'],
        // left: 10,
        // top: 10,
        // right: 10,
        // bottom: 10,
        child: container,
      );
    } else {
      finalWidget = container;
    }

    return finalWidget;
  }
}
