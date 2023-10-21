import 'package:flutter/material.dart';
import 'package:flutter_chat/src/routes/routes.dart';
import 'package:flutter_chat/src/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          physics: const BouncingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * .8,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(title: 'Messanger'),
                _Form(),
                Labels(
                  route: AppRoutes.registerRoute,
                  title: 'No tienes cuenta?',
                  subTitle: 'Crea una ahora!',
                ),
                Text(
                  'Términos y condiciones de uso',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form();

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final txtEmail = TextEditingController();
  final txtPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Column(
        children: [
          CustomInput(
            txtController: txtEmail,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            icon: Icons.mail_outline,
          ),
          CustomInput(
            txtController: txtPass,
            hintText: 'Password',
            icon: Icons.lock_outline,
            isPassword: true,
          ),
          BtnDefault(
            text: 'Login',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
