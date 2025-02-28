import 'package:flutter/material.dart';
import 'package:coffee_app/styled_body_text.dart';
import 'package:coffee_app/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void incStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void incSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText("Strength: "),
            for(int i = 0; i < strength; i++)
              Image.asset(
              'assets/img/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: incStrength,
              child: Text("+"),
            ),
          ],
        ),
        Row(
          children: [
            StyledBodyText("Sugars: "),
            if(sugars == 0)
              StyledBodyText("No sugars..."),
            for(int m = 0; m < sugars; m++)
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: incSugars,
              child: Text("+"),
            ),
          ],
        ),
      ],
    );
  }
}

