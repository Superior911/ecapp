import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(16.0),
      color: Colors.white,
      child: CircularProgressIndicator(
        color: Color(0xFF790E9F),
        strokeWidth: 3,
      ),
    );
  }
}