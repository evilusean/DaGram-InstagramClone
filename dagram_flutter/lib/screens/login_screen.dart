import 'package:dagram_flutter/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dagram_flutter/utils/colors.dart';
import 'package:dagram_flutter/resources/auth_methods.dart';
import 'package:dagram_flutter/utils/utils.dart';
import 'package:dagram_flutter/screens/signup_screen.dart';
import 'package:dagram_flutter/responsive/mobile_screen_layout.dart';
import 'package:dagram_flutter/responsive/web_screen_layout.dart';
import 'package:dagram_flutter/responsive/responsive_layout_screen.dart';

import '../utils/global_variables.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen ({ Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
      email: _emailController.text, 
      password: _passwordController.text,
      );

      if(res == "Success!"){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout(),
            ),
          ),
        );
      } else {
        showSnackBar(res, context);
      }
      setState(() {
        _isLoading = false;
    });
  }

  void navigateToSignup() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignupScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: MediaQuery.of(context).size.width > webScreenSize? 
          EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width /3)
          : const EdgeInsets.symmetric(horizontal: 32),
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
              const SizedBox(
                height: 24,
              ),
              // text field for password
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
              InkWell(
                onTap: loginUser,
                child: Container(
                  child: _isLoading 
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: primaryColor,
                      ),
                    ) 
                  : const Text('Log In'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(4),
                    ),
                  ),
                  color: blueColor),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(child: Container(), flex: 2),
              // signup
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Don't have an account?"),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                  ),
                  GestureDetector(
                    onTap: navigateToSignup,
                  child: Container(
                    child: const Text(
                      "Sign Up.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ],)
        ),
      ),
    );
  }
}