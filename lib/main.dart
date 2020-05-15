import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: Text(
                  'Magic 8 Ball',
                  style: TextStyle(color: Colors.black38),
                ),
                backgroundColor: Colors.white,
              ),
              body: MagicBallPage())),
    );

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int magicBallAsw = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Ask me anything: ',
            style: TextStyle(
                color: Colors.red, fontSize: 40.0, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      magicBallAsw = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/ball$magicBallAsw.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
