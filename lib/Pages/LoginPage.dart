import 'package:flutter/material.dart';
import 'package:newflutterproject/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(const Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
          key: _formkey,
          child:  Column(
            children: [
              Image.asset("assets/images/login.png.png", fit: BoxFit.cover),
              const SizedBox(height: 2.0),
              Text(
                "Welcome $name",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter user name",
                            labelText: "user name"),
                        validator: (velue) {
                          if (velue!.isEmpty) {
                            return "username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter pasword ", labelText: "pasword"),
                        validator: (velue) {
                          if (velue!.isEmpty) {
                            return "pasword cannot be empty";
                          } else if (velue.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Material(
                          borderRadius:
                              BorderRadius.circular(changebutton ? 50 : 8),
                          color: Colors.deepPurple,
                          child: InkWell(
                              onTap: () => (moveToHome(context)),
                              child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                height: 50,
                                width: changebutton ? 50 : 150,
                                child: Center(
                                  child: changebutton
                                      ? const Icon(Icons.done,
                                          color: Colors.white)
                                      : const Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                ),
                              )))
                    ],
                  ))
            ],
          ),
        )));
  }
}
