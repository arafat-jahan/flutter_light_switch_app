import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LightSwitchPage(),
    );
  }
}

class LightSwitchPage extends StatefulWidget {
  @override
  _LightSwitchPageState createState() => _LightSwitchPageState();
}

class _LightSwitchPageState extends State<LightSwitchPage> {
  bool isLightOn = false;

  void toggleLight() {
    setState(() {
      isLightOn = !isLightOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isLightOn ? Colors.yellow[100] : Colors.black,
      appBar: AppBar(
        title: Text("Light Switch App"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isLightOn ? Icons.lightbulb : Icons.lightbulb_outline,
              size: 100,
              color: isLightOn ? Colors.yellow : Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              isLightOn ? "Light is ON" : "Light is OFF",
              style: TextStyle(
                fontSize: 24,
                color: isLightOn ? Colors.black : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleLight,
              style: ElevatedButton.styleFrom(
                backgroundColor: isLightOn ? Colors.orange : Colors.grey,
              ),
              child: Text(
                isLightOn ? "Turn OFF" : "Turn ON",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
