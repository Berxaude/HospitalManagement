// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:exercice/screen/data/fake_data.dart';
import 'package:exercice/screen/views/list_view.dart';
import 'package:flutter/material.dart';

class AddStudent extends StatelessWidget {
  List<Map> candidates;

  AddStudent({required this.candidates});

  String full_name = '';
  String Gender = '';
  String Age = '';
  String Weigth = '';
  String Number = '';
  String Email = '';
  String Adresse = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('ADDING PATIENT'))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (newValeur) {
                      full_name = newValeur;
                    },
                    decoration: const InputDecoration(
                        labelText: "full name", prefixIcon: Icon(Icons.face)),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (newValeur) {
                      Age = newValeur;
                    },
                    decoration: const InputDecoration(
                        labelText: "Age", prefixIcon: Icon(Icons.view_agenda)),
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (newValeur) {
                      Gender = newValeur;
                    },
                    decoration: const InputDecoration(
                        labelText: "Gender", prefixIcon: Icon(Icons.person)),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (newValeur) {
                      Weigth = newValeur;
                    },
                    decoration: const InputDecoration(
                        labelText: "Weigth", prefixIcon: Icon(Icons.balance)),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (newValeur) {
                      Number = newValeur;
                    },
                    decoration: const InputDecoration(
                        labelText: "Phone number",
                        prefixIcon: Icon(Icons.phone)),
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (newValeur) {
                      Email = newValeur;
                    },
                    decoration: const InputDecoration(
                        labelText: "Email", prefixIcon: Icon(Icons.mail)),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Map new_data = {
                    "full_name": full_name,
                    "Age": Age,
                    "Gender": Gender,
                    "Email": Email,
                    "Weigth": Weigth,
                    "Adresse": Adresse
                  };

                  if (full_name == '' ||
                      Age == '' ||
                      Gender == '' ||
                      Email == '' ||
                      'Weigth' == '' ||
                      'Adresse' == '') {
                    var snackbar = const SnackBar(
                      content: Text('Veuillez remplir tous les champs'),
                      backgroundColor: Colors.red,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    return;
                  }

                  fakedata.add(new_data);

                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) {
                    return ListPatientView(data: candidates);
                  }));

                  //navigation
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 100)),
                child: const Text(
                  "Ajouter",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
    /*Column(
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
        ));*/
  }
}
