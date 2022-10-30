import 'package:flutter/material.dart';
import 'package:turistapp/src/pages/headers_page.dart';
import 'package:turistapp/src/pages/widgets/headers.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HeaderCurvo(),
          Column(
            children: [
              Center(
                heightFactor: 1.9,
                child: Image.asset(
                  "assets/images/oso negro.png",
                  height: 150,
                  width: 150,
                ),
              ),
              Text(
                "Bienvenido",
                style: TextStyle(fontSize: 40),
              ),
              Text("a TuristApp."),
            ],
          ),
          // SizedBox(
          //   height: 70,
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: "Usuario"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: "Contraseña"),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 650,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                        elevation: MaterialStateProperty.all(4),
                        minimumSize: MaterialStateProperty.all(Size(75, 35)),
                        fixedSize: MaterialStateProperty.all(Size(290, 50)),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffCCCCCC))),
                    onPressed: () {},
                    child: Text("Ingresa"),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
