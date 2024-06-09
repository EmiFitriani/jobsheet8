import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Wrap(
          children: [
            buatKotak(Colors.greenAccent, 100, "Hijau"),
            buatKotak(Colors.orangeAccent[400]!, 70, "Oranye"),
            buatKotak(Colors.greenAccent, 50, "Hijau Kecil"),
            buatKotak(Colors.orangeAccent[400]!, 90, "Oranye Besar"),
            buatKotak(Colors.red[300]!, 110, "Merah"),
            buatKotak(Colors.blue[400]!, 40, "Biru"),
          ],
        ),
      ),
    ),
  ));
}

Widget buatKotak(Color warna, double ukuran, String nama) {
  return Container(
    height: ukuran,
    width: ukuran,
    margin: const EdgeInsets.all(10),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: warna,
          ),
        ),
        Center(
          child: Text(
            nama,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}

