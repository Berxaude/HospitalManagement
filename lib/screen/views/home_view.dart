// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Home")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "../../images/icone.png",
              width: 100,
              height: 100,
            ),
            Image.asset(
              "../../images/medecin.png",
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                "MANAGE YOUR HOSPITAL",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ));
  }
}
