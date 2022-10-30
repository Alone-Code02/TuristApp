import 'package:flutter/material.dart';
import 'package:turistapp/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        Duration(milliseconds: 4500),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: SafeArea(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Spacer(),
            Image.asset(
              "assets/images/oso negro.png",
              fit: BoxFit.fill,
              alignment: Alignment.center,
              width: 200,
              height: 200,
            ),
            Spacer(),
            Text(
              "TuristApp",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                  color: Color(0xff55ABDB)),
            ),
            Spacer(),
            CircularProgressIndicator(),
            Spacer(),
            Text(
              "Bienvenido",
              style: TextStyle(fontSize: 25),
            ),
            Spacer(),
          ],
          //),
        ),
      ),
    );
  }
}
