import 'package:flutter/material.dart';
import 'package:roamio/config/const/signup_const.dart';
import 'package:roamio/util/form_util.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static String name = "signup";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool acceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/signupback.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(0.7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Form(
                          key: formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              buildTextFormField(
                                label: 'Username',
                                controller: usernameController,
                                borderColor: formBorderColor,
                                keyboardType: TextInputType.text,
                                labelStyle: TextStyle(
                                  color: formBorderColor,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              buildTextFormField(
                                label: 'Email',
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                borderColor: formBorderColor,
                                labelStyle: TextStyle(
                                  color: formBorderColor,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              buildTextFormField(
                                label: 'Password',
                                controller: passwordController,
                                obscureText: true,
                                borderColor: formBorderColor,
                                labelStyle: TextStyle(
                                  color: formBorderColor,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              Row(
                                children: [
                                  Checkbox(
                                    value: acceptedTerms,
                                    onChanged: (value) {
                                      setState(() {
                                        acceptedTerms = value!;
                                      });
                                    },
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (!acceptedTerms) {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title:
                                                  const Text('Terms Accepted'),
                                              content: const Text(
                                                  'You have accepted all terms and conditions.'),
                                              actions: [
                                                TextButton(
                                                  child: const Text('Accept'),
                                                  onPressed: () {
                                                    setState(() {
                                                      acceptedTerms = true;
                                                    });
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                    child: const Text(
                                      'Terms and conditions',
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16.0),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(70, 0, 70, 5),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text('Processing Data'),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text('Sign Up'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
