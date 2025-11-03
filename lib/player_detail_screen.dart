import 'package:aplikasibola_0034/home_screen.dart';
import 'package:flutter/material.dart';

class PlayerDetailScreen extends StatelessWidget {
  final Map<String, String> playerData;

  const PlayerDetailScreen({super.key, required this.playerData});

  @override
  Widget build(BuildContext context) {
    final heightCM = double.tryParse(playerData['tinggi'] ?? '0') ?? 0;
    final heightToM = heightCM / 100;

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
                        'Detail Pemain',
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nama: ${playerData['nama']}'),
                    SizedBox(height: 10),
                    Text('Posisi: ${playerData['posisi']}'),
                    SizedBox(height: 10),
                    Text('Nomor Punggung: ${playerData['nomorPunggung']}'),
                    SizedBox(height: 10),
                    Text('Kewarganegaraan: ${playerData['kewarganegaraan']}'),
                    SizedBox(height: 10),
                    Text('Usia: ${playerData['usia']} tahun'),
                    SizedBox(height: 10),
                    Text('Tinggi: ${heightToM.toStringAsFixed(2)} m'),
                    SizedBox(height: 10),
                    Text('Jenis Kelamin: ${playerData['jenisKelamin']}'),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(builder: (context) => HomeScreen() ));
                  },
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
