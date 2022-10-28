// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ListPatientView extends StatelessWidget {
  List<Map> data;

  ListPatientView({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Liste des candidats (${data.length})')),
        ),
        body: data.isEmpty
            ? const Center(
                child: Text('No patient'),
              )
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (_, index) {
                  Map candidat = data[index];

                  return Dismissible(
                      key: Key(index.toString()),
                      onDismissed: (direction) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${candidat['full_name']} dismissed'),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "CANCER",
                                    style: TextStyle(color: Colors.red),
                                  )),
                            ],
                          ),
                        )));
                      },
                      background: Container(
                        color: Colors.red,
                      ),
                      child: ListTile(
                        title: Text(
                          "${candidat['full_name']}",
                          style: const TextStyle(fontSize: 30),
                        ),
                        subtitle: Text(candidat['email']),
                        //leading: Image.network(candidat['photo']),
                        trailing: Icon(
                          Icons.circle,
                          color: candidat['gender'] == 'Male'
                              ? Colors.green
                              : Colors.amber,
                        ),
                      ));
                }));
  }
}
