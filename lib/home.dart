import 'package:flutter/material.dart';
import 'package:tw/core/tw/fcontainer.dart';
import 'package:tw/core/tw/ftext.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 275,
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x196E6E6E),
                              blurRadius: 8,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 30,
                      child: Text(
                        'New conversations',
                        style: TextStyle(
                          color: Color(0xFF414D55),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.25,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 223,
              top: 32,
              child: Container(
                width: 22,
                height: 20,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 22,
                        height: 20,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFDCA40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top: 4.50,
                      child: Text(
                        '8',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2C353A),
                          fontSize: 10,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 146,
              child: Container(
                width: 161,
                height: 34,
                child: Stack(
                  children: [
                    Positioned(
                      left: 80,
                      top: 10,
                      child: Text(
                        'Evelyn Paul',
                        style: TextStyle(
                          color: Color(0xFF28B5E1),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 60,
                        height: 34,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/72dbd909-0969-47a1-8a9c-98197a68f1c2?type=RECTANGLE&name=Rectangle"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 70,
              child: Container(
                width: 164,
                height: 60,
                child: Stack(
                  children: [
                    Positioned(
                      left: 80,
                      top: 32,
                      child: Text(
                        'Typing...',
                        style: TextStyle(
                          color: Color(0xFF696C6D),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.43,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 10,
                      child: Text(
                        'Eleanor Bell',
                        style: TextStyle(
                          color: Color(0xFF28B5E1),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/502f6305-c980-4420-bf23-999af01fd65b?type=RECTANGLE&name=Rectangle"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 80,
              child: Container(
                width: 275,
                height: 100,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 100,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [
                              Colors.white.withOpacity(0.00009999999747378752),
                              Colors.white
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 133,
                      top: 68,
                      child: Text(
                        'caret-down',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF28B5E1),
                          fontSize: 16,
                          fontFamily: 'Font Awesome 5 Pro',
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 275,
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x196E6E6E),
                              blurRadius: 8,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 30,
                      child: Text(
                        'New conversations',
                        style: TextStyle(
                          color: Color(0xFF414D55),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.25,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 223,
              top: 32,
              child: Container(
                width: 22,
                height: 20,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 22,
                        height: 20,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFDCA40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top: 4.50,
                      child: Text(
                        '8',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2C353A),
                          fontSize: 10,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 146,
              child: Container(
                width: 161,
                height: 34,
                child: Stack(
                  children: [
                    Positioned(
                      left: 80,
                      top: 10,
                      child: Text(
                        'Evelyn Paul',
                        style: TextStyle(
                          color: Color(0xFF28B5E1),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 60,
                        height: 34,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://placehold.co/60x34.png?type=RECTANGLE&name=Rectangle"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 70,
              child: Container(
                width: 164,
                height: 60,
                child: Stack(
                  children: [
                    Positioned(
                      left: 80,
                      top: 32,
                      child: Text(
                        'Typing...',
                        style: TextStyle(
                          color: Color(0xFF696C6D),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.43,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 10,
                      child: Text(
                        'Eleanor Bell',
                        style: TextStyle(
                          color: Color(0xFF28B5E1),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://placehold.co/60x60.png?type=RECTANGLE&name=Rectangle"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 80,
              child: Container(
                width: 275,
                height: 100,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 100,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [
                              Colors.white.withOpacity(0.00009999999747378752),
                              Colors.white
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 133,
                      top: 68,
                      child: Text(
                        'caret-down',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF28B5E1),
                          fontSize: 16,
                          fontFamily: 'Font Awesome 5 Pro',
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 275,
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x196E6E6E),
                              blurRadius: 8,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 30,
                      child: Text(
                        'Get support',
                        style: TextStyle(
                          color: Color(0xFF414D55),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.25,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 275,
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: -6,
                      child: Container(
                        width: 330,
                        height: 220.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/566b67aa-4d74-478b-a0fa-e12d59b5e984?type=RECTANGLE&name=shutterstock_502875937"),
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
              left: 30,
              top: 118,
              child: Container(
                width: 100,
                height: 32,
                child: Stack(
                  children: [
                    Positioned(
                      left: 15,
                      top: 5,
                      child: Text(
                        'Start сhat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 86,
              child: Text(
                '8 800 3254486',
                style: TextStyle(
                  color: Color(0xFF414D55),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 62,
              child: Text(
                'We will call you back',
                style: TextStyle(
                  color: Color(0xFF696C6D),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 1.43,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 275,
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x196E6E6E),
                              blurRadius: 8,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 30,
                      child: Text(
                        'Get support',
                        style: TextStyle(
                          color: Color(0xFF414D55),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.25,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 275,
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: -6,
                      child: Container(
                        width: 330,
                        height: 220.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://placehold.co/330x220.png"),
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
              left: 30,
              top: 118,
              child: Container(
                width: 100,
                height: 32,
                child: Stack(
                  children: [
                    Positioned(
                      left: 15,
                      top: 5,
                      child: Text(
                        'Start сhat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 86,
              child: Text(
                '8 800 3254486',
                style: TextStyle(
                  color: Color(0xFF414D55),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 62,
              child: Text(
                'We will call you back',
                style: TextStyle(
                  color: Color(0xFF696C6D),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 1.43,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 380,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 275,
                height: 380,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x196E6E6E),
                      blurRadius: 8,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 213,
              top: 318,
              child: Container(
                width: 32,
                height: 32,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-0.00, 1.00),
                            end: Alignment(0, -1),
                            colors: [Color(0xFF0496FF), Color(0xFF28B5E0)],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 6,
                      child: SizedBox(
                        width: 32,
                        child: Text(
                          'shopping-bag',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Font Awesome 5 Pro',
                            fontWeight: FontWeight.w400,
                            height: 1.54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 178,
              top: 326,
              child: Text(
                'compress-alt',
                style: TextStyle(
                  color: Color(0xFFA1C3D3),
                  fontSize: 16,
                  fontFamily: 'Font Awesome 5 Pro',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.01,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 318,
              child: Container(
                width: 87,
                height: 32,
                child: Stack(
                  children: [
                    Positioned(
                      left: 42,
                      top: 8,
                      child: Text(
                        '254.99',
                        style: TextStyle(
                          color: Color(0xFF414D55),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Opacity(
                        opacity: 0.50,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: ShapeDecoration(
                            color: Color(0x4CB8D2DE),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFA2C4D4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 11,
                      top: 5,
                      child: Text(
                        '\$',
                        style: TextStyle(
                          color: Color(0xFF414D55),
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 98,
              child: Container(
                width: 215,
                height: 215,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 215,
                        height: 215,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F5F5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 215,
                        height: 215,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F5F5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 215,
                        height: 215,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/51fb040d-f05a-4926-8dd0-50efa4be6109"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 77,
              child: Container(
                width: 86,
                height: 12,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'star',
                        style: TextStyle(
                          color: Color(0xFFFFD700),
                          fontSize: 12,
                          fontFamily: 'Font Awesome 5 Pro',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 0,
                      child: Text(
                        'star',
                        style: TextStyle(
                          color: Color(0xFFFFD700),
                          fontSize: 12,
                          fontFamily: 'Font Awesome 5 Pro',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 0,
                      child: Text(
                        'star',
                        style: TextStyle(
                          color: Color(0xFFFFD700),
                          fontSize: 12,
                          fontFamily: 'Font Awesome 5 Pro',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 54,
                      top: 0,
                      child: Text(
                        'star',
                        style: TextStyle(
                          color: Color(0xFFFFD700),
                          fontSize: 12,
                          fontFamily: 'Font Awesome 5 Pro',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 72,
                      top: 0,
                      child: Text(
                        'star',
                        style: TextStyle(
                          color: Color(0xFFFFD700),
                          fontSize: 12,
                          fontFamily: 'Font Awesome 5 Pro',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 228,
              top: 35,
              child: Text(
                'heart',
                style: TextStyle(
                  color: Color(0xFFA1C3D3),
                  fontSize: 16,
                  fontFamily: 'Font Awesome 5 Pro',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.01,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 30,
              child: SizedBox(
                width: 178,
                child: Text(
                  'Nike ZOOM Vaporfly  NEXT Premium',
                  style: TextStyle(
                    color: Color(0xFF414D55),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                    letterSpacing: 0.01,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 275,
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x196E6E6E),
                              blurRadius: 8,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 30,
                      child: Text(
                        'Get support',
                        style: TextStyle(
                          color: Color(0xFF414D55),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.25,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 275,
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275,
                        height: 180,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: -6,
                      child: Container(
                        width: 330,
                        height: 220.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://placehold.co/330x220.png"),
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
              left: 30,
              top: 118,
              child: Container(
                width: 100,
                height: 32,
                child: Stack(
                  children: [
                    Positioned(
                      left: 15,
                      top: 5,
                      child: Text(
                        'Start сhat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 86,
              child: Text(
                '8 800 3254486',
                style: TextStyle(
                  color: Color(0xFF414D55),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 62,
              child: Text(
                'We will call you back',
                style: TextStyle(
                  color: Color(0xFF696C6D),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 1.43,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 380,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f28469df-7c34-4c03-a977-05ef85f48f15"),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
      ),
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
