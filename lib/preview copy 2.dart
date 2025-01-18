import 'package:flutter/material.dart';
import 'package:tw/core.dart';

// highest width: 1049
// highest height: 812

class PreviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double mw = constraints.maxWidth;
      double mh = MediaQuery.of(context).size.height;
      double fmw = 1049;
      double fmh = 812;
      double ratio = fmw / fmh;
      double rmh = mw / ratio;
      double rmw = mw;

      return Container(
        width: (1049 / fmw) * rmw,
        height: (812 / fmh) * rmh,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://placehold.co/1049x812.png?type=FRAME&name=group 9"),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: (0 / fmw) * rmw,
              top: (0 / fmh) * rmh,
              child: Container(
                width: (1049 / fmw) * rmw,
                height: (812 / fmh) * rmh,
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
              left: (653 / fmw) * rmw,
              top: (422 / fmh) * rmh,
              child: Container(
                width: (122 / fmw) * rmw,
                height: (122 / fmh) * rmh,
                child: Stack(
                  children: [
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (0 / fmh) * rmh,
                      child: Container(
                        width: (122 / fmw) * rmw,
                        height: (122 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD7D7D7),
                          shape: OvalBorder(
                            side: BorderSide(
                              width: (8 / fmw) * rmw,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF00CF99),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (0 / fmh) * rmh,
                      child: Container(
                        width: (122 / fmw) * rmw,
                        height: (122 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD7D7D7),
                          shape: OvalBorder(
                            side: BorderSide(
                              width: (8 / fmw) * rmw,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF00CF99),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (-16 / fmw) * rmw,
                      top: (-60 / fmh) * rmh,
                      child: Container(
                        width: (172 / fmw) * rmw,
                        height: (259 / fmh) * rmh,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/1ef113f9-1524-4930-b3b5-e03af8ef9786?type=RECTANGLE&name=Bitmap"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: (480 / fmw) * rmw,
              top: (422 / fmh) * rmh,
              child: Container(
                width: (122 / fmw) * rmw,
                height: (122 / fmh) * rmh,
                child: Stack(
                  children: [
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (0 / fmh) * rmh,
                      child: Container(
                        width: (122 / fmw) * rmw,
                        height: (122 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://placehold.co/122x122.png?type=ELLIPSE&name=Mask"),
                          ),
                          shape: OvalBorder(
                            side: BorderSide(
                              width: (8 / fmw) * rmw,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF00CF99),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (0 / fmh) * rmh,
                      child: Container(
                        width: (122 / fmw) * rmw,
                        height: (122 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shape: OvalBorder(
                            side: BorderSide(
                              width: (8 / fmw) * rmw,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF00CF99),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (-11 / fmw) * rmw,
                      top: (-14 / fmh) * rmh,
                      child: Container(
                        width: (144 / fmw) * rmw,
                        height: (205 / fmh) * rmh,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/15000653-f233-4659-80ed-131a7bcde28e?type=RECTANGLE&name=Bitmap"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: (307 / fmw) * rmw,
              top: (422 / fmh) * rmh,
              child: Container(
                width: (122 / fmw) * rmw,
                height: (122 / fmh) * rmh,
                child: Stack(
                  children: [
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (0 / fmh) * rmh,
                      child: Container(
                        width: (122 / fmw) * rmw,
                        height: (122 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://placehold.co/122x122.png?type=ELLIPSE&name=Mask"),
                          ),
                          shape: OvalBorder(
                            side: BorderSide(
                              width: (8 / fmw) * rmw,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF00CF99),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (0 / fmh) * rmh,
                      child: Container(
                        width: (122 / fmw) * rmw,
                        height: (122 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shape: OvalBorder(
                            side: BorderSide(
                              width: (8 / fmw) * rmw,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF00CF99),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (-112 / fmw) * rmw,
                      top: (-45 / fmh) * rmh,
                      child: Container(
                        width: (363 / fmw) * rmw,
                        height: (242 / fmh) * rmh,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/89bbcb9b-1bf8-4195-8493-98c0e8772c33?type=RECTANGLE&name=Bitmap"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: (119 / fmw) * rmw,
              top: (609 / fmh) * rmh,
              child: Container(
                width: (812 / fmw) * rmw,
                height: (144 / fmh) * rmh,
                decoration: ShapeDecoration(
                  color: Color(0xFF514CF8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Positioned(
              left: (420.50 / fmw) * rmw,
              top: (652 / fmh) * rmh,
              child: Text(
                'Join Team',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44 * rmw / fmw,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: (115 / fmw) * rmw,
              top: (164 / fmh) * rmh,
              child: Text(
                'Progress towards your\nproject goal',
                style: TextStyle(
                  color: Color(0xFF1D1D1D),
                  fontSize: 44 * rmw / fmw,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: (115 / fmw) * rmw,
              top: (90 / fmh) * rmh,
              child: Text(
                'GO PREMIUM',
                style: TextStyle(
                  color: Color(0xFF514CF8),
                  fontSize: 44 * rmw / fmw,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: (115 / fmw) * rmw,
              top: (326 / fmh) * rmh,
              child: Text(
                'Be a part of the team',
                style: TextStyle(
                  color: Color(0xCCA0A9B0),
                  fontSize: 44 * rmw / fmw,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: (134 / fmw) * rmw,
              top: (422 / fmh) * rmh,
              child: Container(
                width: (122 / fmw) * rmw,
                height: (122 / fmh) * rmh,
                child: Stack(
                  children: [
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (0 / fmh) * rmh,
                      child: Container(
                        width: (122 / fmw) * rmw,
                        height: (122 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD7D7D7),
                          shape: OvalBorder(
                            side: BorderSide(
                              width: (8 / fmw) * rmw,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF00CF99),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (0 / fmh) * rmh,
                      child: Container(
                        width: (122 / fmw) * rmw,
                        height: (122 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD7D7D7),
                          shape: OvalBorder(
                            side: BorderSide(
                              width: (8 / fmw) * rmw,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF00CF99),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (-41 / fmw) * rmw,
                      top: (-51 / fmh) * rmh,
                      child: Container(
                        width: (205 / fmw) * rmw,
                        height: (308 / fmh) * rmh,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b8a5ba6b-184c-431c-9326-10a6366d626b?type=RECTANGLE&name=Bitmap"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
