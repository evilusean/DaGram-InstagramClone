import 'package:dagram_flutter/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dagram_flutter/utils/colors.dart';
import 'package:dagram_flutter/resources/auth_methods.dart';
import 'package:dagram_flutter/utils/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';


class SignupScreen extends StatefulWidget {
  const SignupScreen ({ Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  Uint8List? _image;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _bioController.dispose();
  }

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
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
              Flexible(child: Container(), flex: 1,),
              SvgPicture.asset(
                'assets/DaGram.svg', 
                color: primaryColor,
                 height: 64,
                 ),
                const SizedBox(height: 32),
                // circular widget to accept and show selected file
                Stack(children: [
                  _image != null
                  ? CircleAvatar(
                    radius: 64,
                    backgroundImage: MemoryImage(_image!),
                  )
                  : const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1548222606-6c4f581fd09d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: selectImage, 
                      icon: const Icon(
                        Icons.add_a_photo,
                        ),
                      ),
                    ),
                ],
                ),
                const SizedBox(
                height: 24,
              ),
              //text field input for username
              TextFieldInput(
                hintText: 'Enter your Username.',
                textInputType: TextInputType.text,
                textEditingController: _usernameController,
                ),
              const SizedBox(
                height: 24,
              ),
              //text field input for email
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
              //text field input for your Bio
              TextFieldInput(
                hintText: 'Enter your Bio.',
                textInputType: TextInputType.text,
                textEditingController: _bioController,
                ),
              const SizedBox(
                height: 24,
              ),
              //button login
              InkWell(
                onTap: () async {
                  String res = await AuthMethods().signUpUser(
                    email: _emailController.text, 
                    password: _passwordController.text, 
                    username: _usernameController.text, 
                    bio: _bioController.text
                    );
                    print(res);
                },
                child: Container(
                  child: const Text('Sign Up'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  color: blueColor
                ),
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
                    onTap: () {},
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