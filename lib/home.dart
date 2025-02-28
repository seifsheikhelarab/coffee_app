import 'package:flutter/material.dart';
import 'package:coffee_app/coffee_prefs.dart';
import 'package:coffee_app/styled_body_text.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Coffee ID',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.brown,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[200],
              padding: EdgeInsets.all(20),
              child: StyledBodyText("How I like my Coffee..."),
            ),
            Container(
              color: Colors.brown[100],
              padding: EdgeInsets.all(20),
              child: CoffeePrefs(),
            ),
            Expanded(
              child: Image.asset('assets/img/coffee_bg.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
              ),
              ),
          ],
        ),
      );
  }
}
