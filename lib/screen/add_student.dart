// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class AddStudent extends StatelessWidget {
  List<Map> candidates;

  AddStudent({required this.candidates});

  String full_name = '';
  String Gender = '';
  String Age = '';
  String Weigth = '';
  String Height = '';
  String Number = '';
  String Email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: const Center(
          child: Text('ADD NEw PATIENT'),
        )),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Adding student",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.text,
                onChanged: (newValeur) {
                  full_name = newValeur;
                },
                decoration: const InputDecoration(
                    labelText: "Full Name", prefixIcon: Icon(Icons.face)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (newValeur) {
                      Age = newValeur;
                    },
                    decoration: const InputDecoration(
                        labelText: "Age", prefixIcon: Icon(Icons.view_agenda)),
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) => Age = value,
                    decoration: const InputDecoration(
                        labelText: "Gender", prefixIcon: Icon(Icons.boy)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (newValeur) {
                      Weigth = newValeur;
                    },
                    decoration: const InputDecoration(
                        labelText: "Weigth", prefixIcon: Icon(Icons.balance)),
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) => Height = value,
                    decoration: const InputDecoration(
                        labelText: "Height", prefixIcon: Icon(Icons.height)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (newValeur) {
                  Number = newValeur;
                },
                decoration: const InputDecoration(
                    labelText: "Number", prefixIcon: Icon(Icons.phone)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (newValeur) {
                  Email = newValeur;
                },
                decoration: const InputDecoration(
                    labelText: "Email", prefixIcon: Icon(Icons.mail)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.add_circle,
                      color: Colors.green,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.cancel,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
