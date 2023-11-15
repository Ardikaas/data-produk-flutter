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
              ],
            ),
          ),
          ),
      ),
    );
  }
}