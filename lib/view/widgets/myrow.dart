import 'package:first_flutter_app/model/pet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class MyRow extends StatelessWidget {
  MyRow({
    super.key,
    required this.myPet,
  });

  Pet? myPet;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: Image.network(myPet!.image!),
          ),
          Text(myPet!.name!)
        ],
      ),
    );
  }
}
