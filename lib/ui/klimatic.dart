import 'package:flutter/material.dart';
import '../utilities/utils.dart';

class Klimatic extends StatefulWidget {
  @override
  _KlimaticState createState() => _KlimaticState();
}

class _KlimaticState extends State<Klimatic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Klimatic',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 23.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => debugPrint('Hey'),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'images/cool purple sky.jpg',
              width: 490.0,
              height: 1200.0,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.fromLTRB(0.0, 10.9, 20.9, 0.0),
            child: SafeArea(
              child: Text(
                'Lagos',
                style: cityStyle(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset('images/cloud sun.png'),
          ),

          //Container which will have our weather data

          Container(
            margin: EdgeInsets.fromLTRB(30.0, 370.0, 0.0, 0.0),
            child: Text(
              '67.8C',
              style: tempStyle(),
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle cityStyle() {
  return TextStyle(
    color: Colors.white,
    fontFamily: 'Quantico',
    fontSize: 20.0,
    fontStyle: FontStyle.italic,
  );
}

TextStyle tempStyle() {
  return TextStyle(
    color: Colors.black,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 49.9,
  );
}
