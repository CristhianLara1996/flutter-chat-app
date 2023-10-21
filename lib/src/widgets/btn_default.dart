import 'package:flutter/material.dart';

class BtnDefault extends StatelessWidget {
  const BtnDefault({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.blue,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text('Ingresar'),
              )),
        ),
      ],
    );
  }
}
