import 'package:flutter/material.dart';

class AtomixErrorState extends StatelessWidget {
  final String message;

  const AtomixErrorState({Key? key, this.message = "Something want wrong."})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error, color: Colors.red, size: 64.0),
          SizedBox(height: 16.0),
          Text(
            message,
            style: TextStyle(fontSize: 18.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
