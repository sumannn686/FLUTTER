import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var activeImage = "assests/jerry.jpg";

  buttonPressed() {
    setState(() {
      activeImage = "assests/tom.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              activeImage,
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  buttonPressed();
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.red,
                    textStyle: const TextStyle(fontSize: 20.0)),
                child: Text("Click me"))
          ],
        ),
      ),
    );
  }
}
