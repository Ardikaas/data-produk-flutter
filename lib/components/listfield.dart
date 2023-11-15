import 'package:flutter/material.dart';

class ListField extends StatelessWidget {
  final String namaBarang;
  const ListField({
    super.key,
    required this.namaBarang,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
      child: Container(
        padding: const EdgeInsets.all(8),
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
        child: Text(
          namaBarang,
        ),
      ),
    );
  }
}