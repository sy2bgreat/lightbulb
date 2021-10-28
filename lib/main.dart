import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
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
  // late String _asset;
  // late double _lampHeight;
  // late double _lampWidth;
  // late bool _lampSizeStatus;
  // late bool _lampTurn;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   _asset = "images/lamp_on.png";
  //   _lampHeight = 300;
  //   _lampWidth = 150;
  //   _lampSizeStatus = false;
  //   _lampTurn = true;
  // }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/lamp_off.png"),
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
                ],
              ),
              Column(
                children: [
                  const Text("Switch"),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
