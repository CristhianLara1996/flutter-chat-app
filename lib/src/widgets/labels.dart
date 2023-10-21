import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({
    super.key,
    required this.route,
    required this.title,
    required this.subTitle,
  });

  final String route;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(
              context,
              route,
            );
          },
          child: Text(
            subTitle,
            style: TextStyle(
              color: Colors.blue[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Terminos y condiciones de uso',
          style: TextStyle(
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}
