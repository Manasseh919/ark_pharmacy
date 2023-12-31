import 'package:ark_pharmacy/common/widgets/custom_button.dart';
import 'package:ark_pharmacy/common/widgets/custom_textfield.dart';
import 'package:ark_pharmacy/constants/global_variables.dart';
import 'package:ark_pharmacy/features/auth/services/auth_service.dart';
import 'package:flutter/material.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final AuthService authService = AuthService();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
        context: context,
        email: _emailController.text,
        password: _passwordController.text,
        name: _nameController.text);
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.health_and_safety_sharp,
                size: 100,
                color: Colors.red,
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Welcome to Ark Pharmacy',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: _auth == Auth.signup
                      ? GlobalVariables.backgroundColor
                      : GlobalVariables.greyBackgroundCOlor,
                  title: const Text(
                    'Create Account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                      value: Auth.signup,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      },
                      activeColor: GlobalVariables.secondaryColor,
                    ),
                  ),
                ),
              ),
              if (_auth == Auth.signup)
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _nameController,
                          hintText: "Name",
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CustomTextField(
                          controller: _emailController,
                          hintText: "Email",
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CustomTextField(
                          controller: _passwordController,
                          hintText: "Password",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                            text: "Sign Up",
                            onTap: () {
                              if (_signUpFormKey.currentState!.validate()) {
                                signUpUser();
                              }
                              ;
                            })
                      ],
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: _auth == Auth.signin
                      ? GlobalVariables.backgroundColor
                      : GlobalVariables.greyBackgroundCOlor,
                  title: const Text(
                    'Sign In',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                      value: Auth.signin,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      },
                      activeColor: GlobalVariables.secondaryColor,
                    ),
                  ),
                ),
              ),
              if (_auth == Auth.signin)
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Form(
                    key: _signInFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _emailController,
                          hintText: "Email",
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CustomTextField(
                          controller: _passwordController,
                          hintText: "Password",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                            text: "Sign In",
                            onTap: () {
                              if (_signInFormKey.currentState!.validate()) {
                                signInUser();
                              }
                              ;
                            })
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      )),
    );
  }
}
