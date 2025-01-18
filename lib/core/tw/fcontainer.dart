// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'parsers.dart';

class FContainer extends StatelessWidget {
  final String q;
  final ScrollController? controller;
  final Widget? child;
  final List<Widget>? children;
  final int? itemCount;
  final Widget? Function(BuildContext, int)? itemBuilder;

  FContainer({
    this.child,
    this.children,
    this.q = "",
    this.controller,
    this.itemCount,
    this.itemBuilder,
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
    bool isAxisHorizontal = q.matchContains("axis-x");
    bool isAxisVertical = !isAxisHorizontal;

    bool itemBuilderMode = itemCount != null && itemBuilder != null;

    bool isShrinkWrap = q.matchContains("shrinkWrap");

    if (isRow) {
      widget = Row(
        crossAxisAlignment:
            styles['crossAxisAlignment'] ?? CrossAxisAlignment.start,
        spacing: styles['spacing'],
        children: children ?? [],
      );
    } else if (isWrap) {
      widget = Wrap(
        // crossAxisAlignment:
        //     styles['crossAxisAlignment'] ?? CrossAxisAlignment.start,
        spacing: spacing ?? (spacingX ?? 0.0),
        runSpacing: spacing ?? (spacingY ?? 0.0),
        children: children ?? [],
      );
    } else if (isStack) {
      widget = Stack(
        children: children ?? [],
      );
    } else if (isListView) {
      if (isAxisVertical) {
        widget = ListView.separated(
          controller: controller,
          shrinkWrap: isShrinkWrap,
          separatorBuilder: (context, index) =>
              SizedBox(height: spacing ?? 0.0),
          itemCount: itemBuilderMode ? itemCount! : children!.length,
          itemBuilder: (context, index) =>
              itemBuilderMode ? itemBuilder!(context, index) : children![index],
        );
      } else {
        if (styles["height"] == null) {
          return errorWidget(
            "Height is required for horizontal ListView, eg: h-100",
          );
        }

        widget = Container(
          height: styles["height"],
          child: ListView.separated(
            controller: controller,
            shrinkWrap: isShrinkWrap,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) =>
                SizedBox(height: spacing ?? 0.0),
            itemCount: itemBuilderMode ? itemCount! : children!.length,
            itemBuilder: (context, index) => itemBuilderMode
                ? itemBuilder!(context, index)
                : children![index],
          ),
        );
      }
    } else if (isGridView) {
      int crossAxisCount = q.intValueOf("grid-cols-") ?? 2;
      double aspectRatio = q.doubleValueOf("grid-ar-") ?? 1.0;
      widget = GridView.builder(
        controller: controller,
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: aspectRatio,
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: spacing ?? (spacingX ?? 0.0),
          mainAxisSpacing: spacing ?? (spacingY ?? 0.0),
        ),
        shrinkWrap: isShrinkWrap,
        physics: const ScrollPhysics(),
        itemCount: itemBuilderMode ? itemCount! : children!.length,
        itemBuilder: (context, index) =>
            itemBuilderMode ? itemBuilder!(context, index) : children![index],
      );
    } else if (isSingleChildScrollView) {
      if (isAxisVertical) {
        widget = SingleChildScrollView(
          controller: controller,
          scrollDirection: isAxisHorizontal ? Axis.horizontal : Axis.vertical,
          child: Column(
            crossAxisAlignment:
                styles['crossAxisAlignment'] ?? CrossAxisAlignment.start,
            spacing: styles['spacing'],
            children: children!,
          ),
        );
      } else {
        widget = SingleChildScrollView(
          controller: controller,
          scrollDirection: isAxisHorizontal ? Axis.horizontal : Axis.vertical,
          child: Row(
            crossAxisAlignment:
                styles['crossAxisAlignment'] ?? CrossAxisAlignment.start,
            spacing: styles['spacing'],
            children: children!,
          ),
        );
      }
    } else {
      if (children != null) {
        widget = Column(
          crossAxisAlignment:
              styles['crossAxisAlignment'] ?? CrossAxisAlignment.start,
          spacing: styles['spacing'],
          children: children!,
        );
      } else {
        widget = child!;
      }
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

Widget errorWidget(String message) {
  return Container(
    color: Colors.red,
    padding: const EdgeInsets.all(12.0),
    child: Text(
      message,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
