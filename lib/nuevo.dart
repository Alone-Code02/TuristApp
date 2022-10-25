import 'package:flutter/material.dart';
import 'package:turistapp/src/pages/widgets/headers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Nuevo'),
          ),
          body: Container(
            width: 475,
            height: 912,
            color: Colors.white,
            padding: const EdgeInsets.only(
              top: 0,
              bottom: 90,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 171,
                  child: Image.asset("assets/images/oso negro.png"),
                ),
                SizedBox(height: 0.1),
                Container(
                  width: 320,
                  height: 410,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(49),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        blurRadius: 4,
                        offset: Offset(11, 6),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 52,
                    bottom: 76,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 166,
                        height: 50,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 166,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: Color(0xffcccccc),
                              ),
                              padding: const EdgeInsets.only(
                                left: 48,
                                right: 22,
                                top: 17,
                                bottom: 14,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 98,
                                    child: Text(
                                      "INGRESA",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 37.67),
                      SizedBox(
                        width: 300,
                        height: 77,
                        child: Text(
                          "Bienvenido a TuristApp",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 37.67),
                      Container(
                        width: 245,
                        height: 32,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 79,
                              height: 26,
                              child: Text(
                                "Correo",
                                style: TextStyle(
                                  color: Color(0xffcccccc),
                                  fontSize: 19,
                                ),
                              ),
                            ),
                            Container(
                              width: 245,
                              height: 1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 37.67),
                      Container(
                        width: 245,
                        height: 36,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 140,
                              height: 26,
                              child: Text(
                                "Contraseña",
                                style: TextStyle(
                                  color: Color(0xffcccccc),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              width: 245,
                              height: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0.75),
                Container(
                  width: 320,
                  height: 50,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 320,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Color(0x7fcccccc),
                        ),
                        padding: const EdgeInsets.only(
                          left: 197,
                          right: 31,
                          top: 16,
                          bottom: 15,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "REGISTRATE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0.75),
                Container(
                  width: 320,
                  height: 50,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 320,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Color(0xffcccccc),
                        ),
                        padding: const EdgeInsets.only(
                          left: 134,
                          right: 120,
                          top: 17,
                          bottom: 14,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "INGRESA",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0.75),
                Text(
                  "Olvidaste tu contraseña?.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
