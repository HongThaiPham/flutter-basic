import 'package:flutter/material.dart';

void main() => runApp(MaterialExample());

class MaterialExample extends StatefulWidget {
  @override
  _MaterialExampleState createState() => _MaterialExampleState();
}

class _MaterialExampleState extends State<MaterialExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40.0),
                child: Container(
                    width: 70,
                    height: 70,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: FlutterLogo()),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60.0),
                child: Text('Hello\nWelcome back',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40.0),
                child: TextField(
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                        labelText: 'USERNAME',
                        labelStyle:
                            TextStyle(color: Colors.grey, fontSize: 15))),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40.0),
                  child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: <Widget>[
                        TextField(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'PASSWORD',
                                labelStyle: TextStyle(
                                    color: Colors.grey, fontSize: 15))),
                        Text('SHOW',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 13,
                                fontWeight: FontWeight.bold))
                      ])),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  onPressed: onSignInClicked,
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Container(
                height: 130,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("NEW USER? SIGN UP",
                        style: TextStyle(fontSize: 15, color: Colors.grey)),
                    Text('FORGOT PASSWORD?',
                        style: TextStyle(fontSize: 15, color: Colors.blue))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSignInClicked() {}
}
