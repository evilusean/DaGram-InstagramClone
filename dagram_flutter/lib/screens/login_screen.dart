import 'package:dagram_flutter/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dagram_flutter/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen ({ Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2,),
              SvgPicture.asset(
                'assets/DaGram.svg', 
                color: primaryColor,
                 height: 64,
                 ),
              //text field input for email
              const SizedBox(height: 64),
              TextFieldInput(
                hintText: 'Enter your Email.',
                textInputType: TextInputType.emailAddress,
                textEditingController: _emailController,
                ),
              // text field for password
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Enter your Password.',
                textInputType: TextInputType.text,
                textEditingController: _passwordController,
                isPass: true,
                ),
              const SizedBox(
                height: 24,
              ),
              //button login
              // signup
            ],)
        ),
      ),
    );
  }
}