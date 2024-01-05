import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("2", style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {

                }, child: Text("increase")),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: () {

                }, child: Text("increase")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
