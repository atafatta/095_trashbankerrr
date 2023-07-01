// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  void logout(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 45, 155, 48),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 26, right: 26),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Halo $username',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () => logout(context), // Panggil fungsi logout
                    child: Text(
                      'LogOut',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Text('Silahkan Masukkan Data Sampahmu Disini'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
