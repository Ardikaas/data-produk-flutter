import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListField extends StatelessWidget {
  final String namaBarang;
  final String number;
  final String harga;
  const ListField({
    super.key,
    required this.namaBarang,
    required this.harga,
    required this.number,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 3),
            )
          ]
        ),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              number,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          title: Text(
            namaBarang,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Harga: ${harga}',
          ),
          trailing: IconButton(
            icon: const Icon(
              FontAwesomeIcons.trash,
              color: Colors.red,
            ), onPressed: () {  },
          ),
        ),
      ),
    );
  }
}