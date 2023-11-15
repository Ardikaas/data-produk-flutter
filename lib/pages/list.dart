import 'package:flutter/material.dart';
import 'package:i_list/components/listfield.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Data Produk'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListField(namaBarang: 'Bando', harga: '2000', number: '1'),
                ListField(namaBarang: 'Sepatu', harga: '', number: '2'),
                ListField(namaBarang: 'Tas', harga: '', number: '3'),
                ListField(namaBarang: 'Pensil', harga: '', number: '4'),
                ListField(namaBarang: 'Pulpen', harga: '', number: '5'),
                ListField(namaBarang: 'Penghapus', harga: '', number: '6'),
                ListField(namaBarang: 'Make Up', harga: '', number: '7'),
                ListField(namaBarang: 'Celana', harga: '', number: '8'),
                ListField(namaBarang: 'Baju', harga: '', number: '9'),
                ListField(namaBarang: 'Jaket', harga: '', number: '10'),
              ],
            ),
          ),
          ),
      ),
    );
  }
}