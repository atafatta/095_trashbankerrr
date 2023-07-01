// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, avoid_init_to_null, sized_box_for_whitespace, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'finish.dart';
class MitraPage extends StatefulWidget {
  final double jumlah;
  final String username;

  MitraPage({required this.jumlah,required this.username});

  @override
  _MitraPageState createState() => _MitraPageState();
}

class _MitraPageState extends State<MitraPage> {
  String? selectedMitra = null;
  String? selectedLocation = null;

  List<DropdownMenuItem<String>> dropdownItems = [
    DropdownMenuItem(
      value: null,
      child: Text(
        'Pilih Mitra',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'Sampah Indonesia',
      child: Text('Sampah Indonesia'),
    ),
    DropdownMenuItem(
      value: 'Sampah Desa',
      child: Text('Sampah Desa'),
    ),
  ];

  List<DropdownMenuItem<String>> dropdownItems2 = [
    DropdownMenuItem(
      value: null,
      child: Text(
        'Pilih Lokasi',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'Jogja',
      child: Text('Jogja'),
    ),
    DropdownMenuItem(
      value: 'Seturan',
      child: Text('Seturan'),
    ),
  ];

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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Silahkan Masukkan Data Mitra Disini',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        dropdownColor: Colors.white,
                        value: selectedMitra, // Use selectedMitra here
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedMitra = newValue!;
                          });
                        },
                        items: dropdownItems,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        dropdownColor: Colors.white,
                        value: selectedLocation, // Use selectedLocation here
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedLocation = newValue!;
                          });
                        },
                        items: dropdownItems2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FinishPage(jumlah: widget.jumlah, username: widget.username,),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 31, 121, 34),
                            foregroundColor: Colors.white,
                            minimumSize: Size(152, 38),
                          ),
                          child: Text(
                            'Selesai',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
