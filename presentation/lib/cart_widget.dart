import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartWidget extends StatefulWidget {
  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  int countProducts = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          onTap: () {
            countProducts++;
          },
        ),
        Container(
          child: Text('Items added: $countProducts'),
        ),
      ],
    );
  }
}
