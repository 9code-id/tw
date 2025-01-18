import 'package:flutter/material.dart';
import 'package:tw/core.dart';

// highest width: 750
// highest height: 413

class PreviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double mw = constraints.maxWidth;
      double mh = MediaQuery.of(context).size.height;
      double fmw = 750;
      double fmh = 413;
      double ratio = fmw / fmh;
      double rmh = mw / ratio;
      double rmw = mw;

      return Container(
        width: (750 / fmw) * rmw,
        height: (413 / fmh) * rmh,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://placehold.co/750x413.png?type=FRAME&name=group 8"),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: (0 / fmw) * rmw,
              top: (0 / fmh) * rmh,
              child: Container(
                width: (750 / fmw) * rmw,
                height: (413 / fmh) * rmh,
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
            ),
            Positioned(
              left: (386 / fmw) * rmw,
              top: (49 / fmh) * rmh,
              child: Container(
                width: (122 / fmw) * rmw,
                height: (122 / fmh) * rmh,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://placehold.co/122x122.png?type=ELLIPSE&name=Oval"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(
                    side: BorderSide(
                      width: (4 / fmw) * rmw,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF00CF99),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: (484 / fmw) * rmw,
              top: (49 / fmh) * rmh,
              child: Container(
                width: (122 / fmw) * rmw,
                height: (122 / fmh) * rmh,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://placehold.co/122x122.png?type=ELLIPSE&name=Oval Copy 7"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(
                    side: BorderSide(
                      width: (4 / fmw) * rmw,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: (580 / fmw) * rmw,
              top: (49 / fmh) * rmh,
              child: Container(
                width: (122 / fmw) * rmw,
                height: (122 / fmh) * rmh,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://placehold.co/122x122.png?type=ELLIPSE&name=Oval Copy 8"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(
                    side: BorderSide(
                      width: (1.20 / fmw) * rmw,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: (40 / fmw) * rmw,
              top: (207 / fmh) * rmh,
              child: SizedBox(
                width: (505 / fmw) * rmw,
                height: (95 / fmh) * rmh,
                child: Text(
                  'My Developments',
                  style: TextStyle(
                    color: Color(0xFF1D1D1D),
                    fontSize: 56 * rmw / fmw,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              left: (40 / fmw) * rmw,
              top: (302 / fmh) * rmh,
              child: SizedBox(
                width: (396 / fmw) * rmw,
                child: Text(
                  'Created: 16.03.2020',
                  style: TextStyle(
                    color: Color(0xCCA0A9B0),
                    fontSize: 38 * rmw / fmw,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
