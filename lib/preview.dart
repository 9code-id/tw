import 'package:flutter/material.dart';
import 'package:tw/core.dart';

// highest width: 693
// highest height: 1197

class PreviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double mw = constraints.maxWidth;
      double mh = MediaQuery.of(context).size.height;
      double fmw = 693;
      double fmh = 1197;
      double ratio = fmw / fmh;
      double rmh = mw / ratio;
      double rmw = mw;

      return Container(
        width: (693 / fmw) * rmw,
        height: (1197 / fmh) * rmh,
        child: Stack(
          children: [
            Positioned(
              left: (0 / fmw) * rmw,
              top: (308 / fmh) * rmh,
              child: Container(
                width: (693 / fmw) * rmw,
                height: (889 / fmh) * rmh,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x268A959E),
                      blurRadius: 40,
                      offset: Offset(0, 20),
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: (54 / fmw) * rmw,
              top: (751 / fmh) * rmh,
              child: Container(
                width: (586 / fmw) * rmw,
                height: (375 / fmh) * rmh,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://placehold.co/586x375.png?type=FRAME&name=Group 57"),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (0 / fmh) * rmh,
                      child: Text(
                        'Avacado Salad',
                        style: TextStyle(
                          color: Color(0xFF1D1D1D),
                          fontSize: 42.75 * rmw / fmw,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Positioned(
                      left: (475.95 / fmw) * rmw,
                      top: (10.45 / fmh) * rmh,
                      child: Text(
                        '20 Mins',
                        style: TextStyle(
                          color: Color(0xFF1D1D1D),
                          fontSize: 25.65 * rmw / fmw,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Positioned(
                      left: (429.40 / fmw) * rmw,
                      top: (10.45 / fmh) * rmh,
                      child: Container(
                        width: (30.40 / fmw) * rmw,
                        height: (30.40 / fmh) * rmh,
                        child: Stack(
                          children: [
                            Positioned(
                              left: (0 / fmw) * rmw,
                              top: (0 / fmh) * rmh,
                              child: Container(
                                width: (30.40 / fmw) * rmw,
                                height: (30.40 / fmh) * rmh,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/fbbf310d-d36c-469a-8c3c-f1b0f32559b7?type=RECTANGLE&name=Bitmap"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: (0 / fmw) * rmw,
                              top: (0 / fmh) * rmh,
                              child: Container(
                                width: (30.40 / fmw) * rmw,
                                height: (30.40 / fmh) * rmh,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0b94d722-5b4c-4ed7-93ad-5820d394d4d3?type=RECTANGLE&name=Bitmap"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: (0 / fmw) * rmw,
                              top: (0 / fmh) * rmh,
                              child: Container(
                                width: (30.40 / fmw) * rmw,
                                height: (30.40 / fmh) * rmh,
                                decoration:
                                    BoxDecoration(color: Color(0xFFFABB05)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (91.20 / fmh) * rmh,
                      child: Text(
                        'Avacado Salad with tomato and cucumbers our chefs\nspecial salad with tomato and cucumbers our chefs\nspecial healthy and fat free salad for those who want\nto lose weight, ',
                        style: TextStyle(
                          color: Color(0xCC8A959E),
                          fontSize: 22.23 * rmw / fmw,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (273.75 / fmh) * rmh,
                      child: Text(
                        'Total Price',
                        style: TextStyle(
                          color: Color(0xCC8A959E),
                          fontSize: 24 * rmw / fmw,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: (265.05 / fmw) * rmw,
                      top: (292.60 / fmh) * rmh,
                      child: Container(
                        width: (81.70 / fmw) * rmw,
                        height: (81.70 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Color(0x33FABB05),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(41.04),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (289.75 / fmw) * rmw,
                      top: (318.25 / fmh) * rmh,
                      child: Container(
                        width: (38 / fmw) * rmw,
                        height: (32.30 / fmh) * rmh,
                        child: Stack(
                          children: [
                            Positioned(
                              left: (0 / fmw) * rmw,
                              top: (0 / fmh) * rmh,
                              child: Container(
                                width: (38 / fmw) * rmw,
                                height: (32.30 / fmh) * rmh,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f260e02a-eb71-4416-9c64-bffd1dcd2a2d?type=RECTANGLE&name=Bitmap Copy"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: (0 / fmw) * rmw,
                              top: (0 / fmh) * rmh,
                              child: Container(
                                width: (38 / fmw) * rmw,
                                height: (32.30 / fmh) * rmh,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/666a4fa6-9fed-470b-a774-73f3b0195f3a?type=RECTANGLE&name=Bitmap Copy"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: (0 / fmw) * rmw,
                              top: (0 / fmh) * rmh,
                              child: Container(
                                width: (38 / fmw) * rmw,
                                height: (32.30 / fmh) * rmh,
                                decoration:
                                    BoxDecoration(color: Color(0xFFFABB05)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: (367.65 / fmw) * rmw,
                      top: (292.60 / fmh) * rmh,
                      child: Container(
                        width: (217.55 / fmw) * rmw,
                        height: (81.70 / fmh) * rmh,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF85A2A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.84),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (0 / fmw) * rmw,
                      top: (318.25 / fmh) * rmh,
                      child: Text(
                        '\$12.00',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 42.75 * rmw / fmw,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Positioned(
                      left: (410.40 / fmw) * rmw,
                      top: (318.25 / fmh) * rmh,
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.65 * rmw / fmw,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: (0 / fmw) * rmw,
              top: (0 / fmh) * rmh,
              child: Container(
                width: (693 / fmw) * rmw,
                height: (694.50 / fmh) * rmh,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c7ccadc4-4b36-4c5d-a9c7-86cda7a808e7?type=RECTANGLE&name=111111 copy"),
                    fit: BoxFit.cover,
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
