import 'package:flutter/material.dart';

Map<String, dynamic> parseTailwindStyles(BuildContext context, String q) {
  final styles = <String, dynamic>{};

  // Parsing background color
  styles['bgColor'] = parseBgColor(q);

  // Parsing text color
  styles['textColor'] = parseTextColor(q);

  // Parsing border radius
  styles['borderRadius'] = parseRadius(q);

  // Parsing padding
  styles['padding'] = parsePadding(q);

  // Parsing margin
  styles['margin'] = parseMargin(q);

  // Parsing shadow
  styles['boxShadow'] = parseShadow(q);

  // Parsing border
  if (q.matchContains('border'))
    styles['border'] = Border.all(color: Colors.black);

  // Parsing text alignment
  styles['crossAxisAlignment'] = parseTextAlignment(q);

  // Parsing width
  styles['width'] = parseWidth(context, q);

  // Parsing height
  styles['height'] = parseHeight(context, q);

  // Parsing font size
  styles['fontSize'] = parseFontSize(q);

  // Parsing spacing
  styles['spacing'] = parseSpacing(q);
  styles['x-spacing'] = parseXSpacing(q);
  styles['y-spacing'] = parseYSpacing(q);
  styles['positioned'] = parsePositioned(q);

  return styles;
}

Map<String, dynamic>? parsePositioned(String q) {
  double? left = doubleValueOf("left-", q);
  double? right = doubleValueOf("right-", q);
  double? top = doubleValueOf("top-", q);
  double? bottom = doubleValueOf("bottom-", q);

  bool isPositioned =
      left != null || right != null || top != null || bottom != null;

  if (isPositioned) {
    return {
      'left': left,
      'right': right,
      'top': top,
      'bottom': bottom,
    };
  }
  return null;
}

Color? parseBgColor(String q) {
  final regex = RegExp(r'bg-([a-z]+)(?:-(\d{3}))?');
  final match = regex.firstMatch(q);

  if (match != null) {
    final color = match.group(1);
    final shade = match.group(2) != null ? int.parse(match.group(2)!) : 500;

    return getColorFromNameAndShade(color!, shade);
  }

  return null;
}

Color? parseTextColor(String q) {
  final regex = RegExp(
      r'text-(red|green|yellow|blue|purple|pink|orange|gray)(?:-(\d{3}))?');
  final match = regex.firstMatch(q);

  if (match != null) {
    final color = match.group(1);
    final shade = match.group(2) != null ? int.parse(match.group(2)!) : 500;

    return getColorFromNameAndShade(color!, shade);
  }

  return null;
}

Color getColorFromNameAndShade(String color, int shade) {
  switch (color) {
    case 'red':
      return Colors.red[shade]!;
    case 'green':
      return Colors.green[shade]!;
    case 'yellow':
      return Colors.yellow[shade]!;
    case 'blue':
      return Colors.blue[shade]!;
    case 'purple':
      return Colors.purple[shade]!;
    case 'pink':
      return Colors.pink[shade]!;
    case 'orange':
      return Colors.orange[shade]!;
    case 'gray':
      return Colors.grey[shade]!;
    default:
      return Colors.black;
  }
}

//eg getValueOf("gap-")
double? doubleValueOf(String key, String q) {
  final regex = RegExp(r'(?<!\S)' + key + r'(\d+)');
  final match = regex.firstMatch(q);

  if (match != null) {
    return double.tryParse(match.group(1)!);
  }

  return null;
}

double parseSpacing(String q) {
  return doubleValueOf("gap-", q) ?? 0;
}

double parseXSpacing(String q) {
  return doubleValueOf("gap-x-", q) ?? 0;
}

double parseYSpacing(String q) {
  return doubleValueOf("gap-y-", q) ?? 0;
}

EdgeInsets? parsePadding(String q) {
  return parseMarginOrPadding("p", q);
}

EdgeInsets? parseMargin(String q) {
  return parseMarginOrPadding("m", q);
}

EdgeInsets? parseMarginOrPadding(String symbol, String q) {
  final padding = <String, double>{};

  padding["left"] = doubleValueOf("${symbol}l-", q) ?? 0.0;
  padding["right"] = doubleValueOf("${symbol}r-", q) ?? 0.0;
  padding["top"] = doubleValueOf("${symbol}t-", q) ?? 0.0;
  padding["bottom"] = doubleValueOf("${symbol}b-", q) ?? 0.0;

  double? isAllSide = doubleValueOf("${symbol}-", q);

  if (isAllSide != null) {
    return EdgeInsets.all(isAllSide);
  } else {
    return EdgeInsets.only(
      top: padding['top'] ?? 0,
      right: padding['right'] ?? 0,
      bottom: padding['bottom'] ?? 0,
      left: padding['left'] ?? 0,
    );
  }
}

BorderRadius? parseRadius(String q) {
  final radius = <String, double>{};

  final regex = RegExp(r'rd[trbl]?-(\d+)');
  final matches = regex.allMatches(q);

  for (final match in matches) {
    final value = double.parse(match.group(1)!) * 1.0;
    final type = match.group(0)!.substring(2, 3);

    switch (type) {
      case 't':
        radius['topLeft'] = value;
        radius['topRight'] = value;
        break;
      case 'r':
        radius['topRight'] = value;
        radius['bottomRight'] = value;
        break;
      case 'b':
        radius['bottomRight'] = value;
        radius['bottomLeft'] = value;
        break;
      case 'l':
        radius['bottomLeft'] = value;
        radius['topLeft'] = value;
        break;
      default:
        radius['all'] = value;
    }
  }

  return BorderRadius.only(
    topLeft: Radius.circular(radius['topLeft'] ?? radius['all'] ?? 0),
    topRight: Radius.circular(radius['topRight'] ?? radius['all'] ?? 0),
    bottomRight: Radius.circular(radius['bottomRight'] ?? radius['all'] ?? 0),
    bottomLeft: Radius.circular(radius['bottomLeft'] ?? radius['all'] ?? 0),
  );
}

List<BoxShadow>? parseShadow(String q) {
  final shadows = <BoxShadow>[];

  if (q.matchContains('shadow-xs')) {
    shadows.add(BoxShadow(color: Colors.black26, blurRadius: 2));
  }
  if (q.matchContains('shadow-sm')) {
    shadows.add(BoxShadow(color: Colors.black26, blurRadius: 4));
  }
  if (q.matchContains('shadow-md')) {
    shadows.add(BoxShadow(color: Colors.black26, blurRadius: 6));
  }
  if (q.matchContains('shadow-lg')) {
    shadows.add(BoxShadow(color: Colors.black26, blurRadius: 10));
  }
  if (q.contains('shadow-xl')) {
    shadows.add(BoxShadow(color: Colors.black26, blurRadius: 15));
  }
  if (q.matchContains('shadow-2xl')) {
    shadows.add(BoxShadow(color: Colors.black26, blurRadius: 20));
  }
  if (q.matchContains('shadow-inner')) {
    shadows.add(BoxShadow(
        color: Colors.black26,
        blurRadius: 10,
        spreadRadius: -5,
        offset: Offset(0, 5)));
  }
  if (q.matchContains('shadow-outline')) {
    shadows
        .add(BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 5));
  }
  if (q.matchContains('shadow-none')) {
    return null;
  }

  return shadows.isNotEmpty ? shadows : null;
}

double? parseWidth(BuildContext context, String q) {
  // "w-100"
  // "p-20 w-100 h-100"
  // "w-1/2"
  bool valid = false;
  valid = q.matchContains("w-");
  if (!valid) return null;

  var value = "";
  if (q.startsWith("w-")) {
    value = q.split("w-")[1].split(" ").first;
  } else if (q.contains(" ")) {
    value = q.split(" w-")[1].split(" ").first;
  }

  value = value.trim();
  if (value.contains("%")) {
    return double.parse(value.replaceAll("%", "")) *
        MediaQuery.of(context).size.width /
        100;
  } else if (value == "full") {
    return MediaQuery.of(context).size.width;
  }
  return double.tryParse(value) ?? 0;
}

double? parseHeight(BuildContext context, String q) {
  // "h-100"
  // "p-20 w-100 h-100"
  // "h-1/2"
  bool valid = false;
  valid = q.matchContains("h-");
  if (!valid) return null;

  var value = "";
  if (q.startsWith("h-")) {
    value = q.split("h-")[1].split(" ").first;
  } else if (q.contains(" ")) {
    value = q.split(" h-")[1].split(" ").first;
  }

  value = value.trim();
  if (value.contains("%")) {
    return double.parse(value.replaceAll("%", "")) *
        MediaQuery.of(context).size.height /
        100;
  } else if (value == "full") {
    return MediaQuery.of(context).size.height;
  }
  return double.tryParse(value) ?? 0;
}

double? parseFontSize(String q) {
  final regex = RegExp(r'text-(xs|sm|base|lg|xl|2xl|3xl|4xl|5xl|6xl)');
  final match = regex.firstMatch(q);

  if (match != null) {
    switch (match.group(1)) {
      case 'xs':
        return 12.0;
      case 'sm':
        return 14.0;
      case 'base':
        return 16.0;
      case 'lg':
        return 18.0;
      case 'xl':
        return 20.0;
      case '2xl':
        return 24.0;
      case '3xl':
        return 30.0;
      case '4xl':
        return 36.0;
      case '5xl':
        return 48.0;
      case '6xl':
        return 60.0;
      default:
        return null;
    }
  }

  return null;
}

CrossAxisAlignment? parseTextAlignment(String q) {
  if (q.matchContains('text-right')) return CrossAxisAlignment.end;
  if (q.matchContains('text-center')) return CrossAxisAlignment.center;
  if (q.matchContains('text-left')) return CrossAxisAlignment.start;
  return null;
}

extension TWStringExtension on String {
  bool get test {
    return contains("test");
  }

  bool matchContains(String search) {
    String q = this;
    //q: "list gap-4 pl-20 bg-yellow",
    // isContainsQuery("p") => false , because there's other cahracter before "p"
    // isContainsQuery("pl") => true , because "pl" is in the string

    // regex?
    final regex = RegExp(r'(?<!\S)' + search);
    final match = regex.firstMatch(q);
    return match != null;
  }

  double? doubleValueOf(String key) {
    String q = this;
    final regex = RegExp(r'(?<!\S)' + key + r'(\d+(\.\d+)?)');
    final match = regex.firstMatch(q);

    if (match != null) {
      return double.tryParse(match.group(1)!);
    }

    return null;
  }

  int? intValueOf(String key) {
    String q = this;
    final regex = RegExp(r'(?<!\S)' + key + r'(\d+)');
    final match = regex.firstMatch(q);

    if (match != null) {
      return int.tryParse(match.group(1)!);
    }

    return null;
  }
}
