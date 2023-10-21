import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.txtController,
    required this.icon,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  });

  final IconData icon;
  final String hintText;
  final TextEditingController txtController;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            offset: const Offset(0, 5),
            blurRadius: 5,
          ),
        ],
      ),
      child: TextField(
        controller: txtController,
        autocorrect: true,
        obscureText: isPassword,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            icon: Icon(
              icon,
            ),
            hintStyle: const TextStyle(color: Colors.black26)),
        cursorColor: Theme.of(context).primaryColor,
        onChanged: (value) {},
      ),
    );
  }
}
