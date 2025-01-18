import 'package:flutter/material.dart';
import 'package:tw/core.dart';

// highest width: 1064
// highest height: 1593

class PreviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double mw = constraints.maxWidth;
      double mh = MediaQuery.of(context).size.height;
      double fmw = 1064;
      double fmh = 1593;
      double ratio = fmw / fmh;
      double rmh = mw / ratio;
      double rmw = mw;

      return Container(
        width: (1064 / fmw) * rmw,
        height: (1593 / fmh) * rmh,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://placehold.co/1064x1593.png?type=FRAME&name=Cardyy Health&Fitness 30"),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: (1064 / fmw) * rmw,
              height: (1593 / fmh) * rmh,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x338A959E),
                    blurRadius: 60,
                    offset: Offset(0, 30),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
            Container(
              width: (410 / fmw) * rmw,
              height: (385 / fmh) * rmh,
              child: Stack(
                children: [
                  Positioned(
                    left: (79 / fmw) * rmw,
                    top: (347 / fmh) * rmh,
                    child: Container(
                      width: (244 / fmw) * rmw,
                      height: (38 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF3F3D56),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (183 / fmw) * rmw,
                    top: (32 / fmh) * rmh,
                    child: Container(
                      width: (56 / fmw) * rmw,
                      height: (56 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF2F2E41),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (193 / fmw) * rmw,
                    top: (54 / fmh) * rmh,
                    child: Container(
                      width: (36 / fmw) * rmw,
                      height: (36 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA0616A),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (216 / fmw) * rmw,
                    top: (113 / fmh) * rmh,
                    child: Container(
                      width: (4 / fmw) * rmw,
                      height: (2 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF3F3D56),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (214 / fmw) * rmw,
                    top: (114 / fmh) * rmh,
                    child: Container(
                      width: (9 / fmw) * rmw,
                      height: (4 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF5251FA),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (213 / fmw) * rmw,
                    top: (118 / fmh) * rmh,
                    child: Container(
                      width: (10 / fmw) * rmw,
                      height: (7 / fmh) * rmh,
                      decoration: BoxDecoration(color: Color(0xFF6C63FF)),
                    ),
                  ),
                  Positioned(
                    left: (206 / fmw) * rmw,
                    top: (129 / fmh) * rmh,
                    child: Container(
                      width: (24 / fmw) * rmw,
                      height: (37 / fmh) * rmh,
                      decoration: BoxDecoration(color: Color(0xFF5251FA)),
                    ),
                  ),
                  Positioned(
                    left: (205 / fmw) * rmw,
                    top: (133 / fmh) * rmh,
                    child: Container(
                      width: (26 / fmw) * rmw,
                      height: (3 / fmh) * rmh,
                      decoration: BoxDecoration(color: Color(0xFF3F3D56)),
                    ),
                  ),
                  Positioned(
                    left: (206 / fmw) * rmw,
                    top: (160 / fmh) * rmh,
                    child: Container(
                      width: (26 / fmw) * rmw,
                      height: (3 / fmh) * rmh,
                      decoration: BoxDecoration(color: Color(0xFF3F3D56)),
                    ),
                  ),
                  Positioned(
                    left: (205 / fmw) * rmw,
                    top: (148 / fmh) * rmh,
                    child: Container(
                      width: (26 / fmw) * rmw,
                      height: (6 / fmh) * rmh,
                      decoration: BoxDecoration(color: Color(0xFF3F3D56)),
                    ),
                  ),
                  Positioned(
                    left: (212 / fmw) * rmw,
                    top: (117 / fmh) * rmh,
                    child: Container(
                      width: (12 / fmw) * rmw,
                      height: (4 / fmh) * rmh,
                      decoration: BoxDecoration(color: Color(0xFF3F3D56)),
                    ),
                  ),
                  Positioned(
                    left: (207 / fmw) * rmw,
                    top: (138 / fmh) * rmh,
                    child: Opacity(
                      opacity: 0.10,
                      child: Container(
                        width: (2 / fmw) * rmw,
                        height: (9 / fmh) * rmh,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (207 / fmw) * rmw,
                    top: (155 / fmh) * rmh,
                    child: Opacity(
                      opacity: 0.10,
                      child: Container(
                        width: (2 / fmw) * rmw,
                        height: (3 / fmh) * rmh,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (177 / fmw) * rmw,
                    top: (31 / fmh) * rmh,
                    child: Container(
                      width: (17 / fmw) * rmw,
                      height: (17 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF2F2E41),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (228 / fmw) * rmw,
                    top: (29 / fmh) * rmh,
                    child: Container(
                      width: (17 / fmw) * rmw,
                      height: (17 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF2F2E41),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (114 / fmw) * rmw,
                    top: (183 / fmh) * rmh,
                    child: Container(
                      width: (30 / fmw) * rmw,
                      height: (30 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF5251FA),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (114.22 / fmw) * rmw,
                    top: (200.67 / fmh) * rmh,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-0.68),
                      child: Container(
                        width: (6.78 / fmw) * rmw,
                        height: (14.90 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (17 / fmw) * rmw,
                    top: (139 / fmh) * rmh,
                    child: Container(
                      width: (30 / fmw) * rmw,
                      height: (30 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF3F3D56),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (16.87 / fmw) * rmw,
                    top: (157.65 / fmh) * rmh,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-1.31),
                      child: Container(
                        width: (14.90 / fmw) * rmw,
                        height: (6.78 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (0 / fmw) * rmw,
                    top: (57 / fmh) * rmh,
                    child: Container(
                      width: (19 / fmw) * rmw,
                      height: (19 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF3F3D56),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (0.43 / fmw) * rmw,
                    top: (68.75 / fmh) * rmh,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-1.31),
                      child: Container(
                        width: (9.28 / fmw) * rmw,
                        height: (4.22 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (97 / fmw) * rmw,
                    top: (287 / fmh) * rmh,
                    child: Container(
                      width: (19 / fmw) * rmw,
                      height: (19 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF3F3D56),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (96.72 / fmw) * rmw,
                    top: (298.38 / fmh) * rmh,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-1.31),
                      child: Container(
                        width: (9.28 / fmw) * rmw,
                        height: (4.22 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (380 / fmw) * rmw,
                    top: (172 / fmh) * rmh,
                    child: Container(
                      width: (30 / fmw) * rmw,
                      height: (30 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF3F3D56),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (381 / fmw) * rmw,
                    top: (180 / fmh) * rmh,
                    child: Container(
                      width: (7 / fmw) * rmw,
                      height: (15 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (332 / fmw) * rmw,
                    top: (77 / fmh) * rmh,
                    child: Container(
                      width: (30 / fmw) * rmw,
                      height: (30 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF5251FA),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (332.69 / fmw) * rmw,
                    top: (85.11 / fmh) * rmh,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-0.63),
                      child: Container(
                        width: (14.91 / fmw) * rmw,
                        height: (6.77 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (375 / fmw) * rmw,
                    top: (0 / fmh) * rmh,
                    child: Container(
                      width: (19 / fmw) * rmw,
                      height: (19 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF5251FA),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (375.92 / fmw) * rmw,
                    top: (5.67 / fmh) * rmh,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-0.63),
                      child: Container(
                        width: (9.29 / fmw) * rmw,
                        height: (4.22 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (305 / fmw) * rmw,
                    top: (239 / fmh) * rmh,
                    child: Container(
                      width: (19 / fmw) * rmw,
                      height: (19 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF3F3D56),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (306.10 / fmw) * rmw,
                    top: (244.66 / fmh) * rmh,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-0.63),
                      child: Container(
                        width: (9.29 / fmw) * rmw,
                        height: (4.22 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: (455 / fmw) * rmw,
              child: Text(
                'Weight Reminder',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1D1D1D),
                  fontSize: 55 * rmw / fmw,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              width: (598 / fmw) * rmw,
              child: Text(
                'Choose a day to weigh yourself and we\nwill send you the reminder',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xCC8A959E),
                  fontSize: 28.50 * rmw / fmw,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              'SELECTED DAY (4)',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF5452FC),
                fontSize: 27 * rmw / fmw,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Monday',
              style: TextStyle(
                color: Color(0xFF1D1D1D),
                fontSize: 35 * rmw / fmw,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Friday',
              style: TextStyle(
                color: Color(0xFF1D1D1D),
                fontSize: 35 * rmw / fmw,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Tuesday',
              style: TextStyle(
                color: Color(0xFF1D1D1D),
                fontSize: 35 * rmw / fmw,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Saturday',
              style: TextStyle(
                color: Color(0xFF1D1D1D),
                fontSize: 35 * rmw / fmw,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Wednesday',
              style: TextStyle(
                color: Color(0xFF1D1D1D),
                fontSize: 35 * rmw / fmw,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Sunday',
              style: TextStyle(
                color: Color(0xFF1D1D1D),
                fontSize: 35 * rmw / fmw,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Thursday',
              style: TextStyle(
                color: Color(0xFF1D1D1D),
                fontSize: 35 * rmw / fmw,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              width: (431 / fmw) * rmw,
              height: (122 / fmh) * rmh,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://placehold.co/431x122.png?type=FRAME&name=Group 3"),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: (0 / fmw) * rmw,
                    top: (0 / fmh) * rmh,
                    child: Container(
                      width: (431 / fmw) * rmw,
                      height: (121.50 / fmh) * rmh,
                      decoration: ShapeDecoration(
                        color: Color(0xFF00CF99),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.50),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (98.50 / fmw) * rmw,
                    top: (37.50 / fmh) * rmh,
                    child: Text(
                      'Set Reminder',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 37.50 * rmw / fmw,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
