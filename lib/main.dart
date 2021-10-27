import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String _asset;
  late double _lampHeight;
  late double _lampWidth;
  late bool _lampSizeStatus;
  late bool _lampTurn;
  late bool _lampRed;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _asset = "images/lamp_on.png";
    _lampHeight = 300;
    _lampWidth = 150;
    _lampSizeStatus = false;
    _lampTurn = true;
    _lampRed = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Light Bulb Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _asset,
                    width: _lampWidth,
                    height: _lampHeight,
                  ),
                ],
              ),
              width: 350,
              height: 650,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text("Size"),
                    Switch(
                        value: _lampSizeStatus,
                        onChanged: (value) {
                          setState(() {
                            _lampSizeStatus = value;
                            sizeFunc();
                          });
                        }),
                  ],
                ),
                Column(
                  children: [
                    const Text("Switch"),
                    Switch(
                        value: _lampTurn,
                        onChanged: (value) {
                          setState(() {
                            _lampTurn = value;
                            turnFunc();
                          });
                        }),
                  ],
                ),
                Column(
                  children: [
                    const Text("Colour"),
                    Switch(
                        value: _lampRed,
                        onChanged: (value) {
                          setState(() {
                            _lampRed = value;
                            turnRed();
                          });
                        })
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  sizeFunc() {
    if (_lampSizeStatus == true) {
      _lampWidth = 300;
      _lampHeight = 600;
    } else {
      _lampWidth = 150;
      _lampHeight = 300;
    }
  }

  turnFunc() {
    if (_lampTurn == true) {
      _asset = "images/lamp_on.png";
    } else {
      _asset = "images/lamp_off.png";
    }
  }

  turnRed() {
    if (_lampRed == false && _lampTurn == false) {
      _asset = "images/lamp_off.png";
    }

    if (_lampRed == true && _lampTurn == true) {
      _asset = "images/lamp_red.png";
    }

    if (_lampTurn == true && _lampRed == false) {
      _asset = "images/lamp_on.png";
    }

    if (_lampRed == true && _lampTurn == false) {
      _asset = "images/lamp_off.png";
    }
  }
}
