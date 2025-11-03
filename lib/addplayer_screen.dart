import 'package:aplikasibola_0034/player_detail_screen.dart';
import 'package:flutter/material.dart';

class AddplayerScreen extends StatefulWidget {
  const AddplayerScreen({super.key});

  @override
  State<AddplayerScreen> createState() => _AddplayerScreenState();
}

class _AddplayerScreenState extends State<AddplayerScreen> {
  final _namaController = TextEditingController();
  final _posisiController = TextEditingController();
  final _nomorPunggungController = TextEditingController();
  final _kewarganegaraanController = TextEditingController();
  final _usiaPemainController = TextEditingController();
  final _tinggiPemainController = TextEditingController();
  final _jenisKelaminController = TextEditingController();
  final _globalKey = GlobalKey<FormState>();
  String groupValue = 'Laki-Laki';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Tambah Pemain Baru',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 48),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Form untuk menambahkan player baru akan ditempatkan disini.',
                ),
              ),

              Flexible(
                child: SingleChildScrollView(
                  child: Form(
                    key: _globalKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _namaController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter player name';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Nama Player',
                            hintText: 'Masukkan nama player',
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _posisiController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            final position = [
                              'Penyerang',
                              'Gelandang',
                              'Bek',
                              'Kiper',
                            ];
                            if (value!.isEmpty) {
                              return 'Please enter player position';
                            } else if (!position.contains(value)) {
                              return 'Please choose "Penyerang, Gelandang, Bek, Kiper"';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Posisi Pemain',
                            hintText: 'Masukkan posisi player',
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _nomorPunggungController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter player number';
                            } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                              return 'Please enter using number 0-9';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Nomor Punggung',
                            hintText: 'Masukkan nomor punggung player',
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _kewarganegaraanController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter player nationality';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Kewarganegaraan',
                            hintText: 'Masukkan kewarganegaraan player',
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _usiaPemainController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter player age';
                            } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                              return 'Please enter using number';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Usia Player',
                            hintText: 'Masukkan usia player',
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _tinggiPemainController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter player height';
                            } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                              return 'Please enter using number';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Tinggi Player (CM)',
                            hintText: 'Masukkan tinggi player dalam satuan CM',
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Jenis Kelamin'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: 'Laki-Laki',
                              // ignore: deprecated_member_use
                              groupValue: groupValue,
                              // ignore: deprecated_member_use
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value!;
                                  _jenisKelaminController.text = value;
                                });
                              },
                            ),
                            Text('Laki-Laki'),
                            Radio(
                              value: 'Perempuan',
                              // ignore: deprecated_member_use
                              groupValue: groupValue,
                              // ignore: deprecated_member_use,
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value!;
                                  _jenisKelaminController.text = value;
                                });
                              },
                            ),
                            Text('Perempuan'),
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){
                              if(_globalKey.currentState!.validate()){
                                final playerData = {
                                  'nama' : _namaController.text,
                                  'posisi' : _posisiController.text,
                                  'nomorPunggung': _nomorPunggungController.text,
                                  'kewarganegaraan': _kewarganegaraanController.text,
                                  'usia': _usiaPemainController.text,
                                  'tinggi': _tinggiPemainController.text,
                                  'jenisKelamin': _jenisKelaminController.text,
                                };
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context)=> PlayerDetailScreen(playerData : playerData)));
                              }
                            }, 
                            child: Text('Tambah Pemain')
                          ),
                        )
                      ],
                    ),
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
