import 'package:flutter/material.dart';

class FText extends StatelessWidget {
  final String text;
  final String q;

  FText(this.text, {required this.q});

  @override
  Widget build(BuildContext context) {
    final styles = parseTailwindStyles(q);

    return Text(
      text,
      textAlign: styles['textAlign'],
      style: TextStyle(
        color: styles['textColor'],
        fontSize: styles['fontSize'],
        fontWeight: styles['fontWeight'],
        fontStyle: styles['fontStyle'],
        decoration: styles['textDecoration'],
      ),
    );
  }

  Map<String, dynamic> parseTailwindStyles(String q) {
    final styles = <String, dynamic>{};

    // Parsing text color
    if (q.contains('text-white')) styles['textColor'] = Colors.white;

    // Parsing font size
    styles['fontSize'] = parseFontSize(q);

    // Parsing font weight
    if (q.contains('font-bold')) styles['fontWeight'] = FontWeight.bold;

    // Parsing font style
    if (q.contains('italic')) styles['fontStyle'] = FontStyle.italic;

    // Parsing text decoration
    if (q.contains('underline')) styles['textDecoration'] = TextDecoration.underline;

    // Parsing text alignment
    if (q.contains('text-right')) styles['textAlign'] = TextAlign.right;

    return styles;
  }

  double? parseFontSize(String q) {
    final regex = RegExp(r'fs-(\d+)');
    final match = regex.firstMatch(q);

    if (match != null) {
      return double.parse(match.group(1)!) * 1.0;
    }

    return null;
  }
}
