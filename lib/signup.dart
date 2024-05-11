import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_flutter_section/login.dart';
import 'package:task_flutter_section/main_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Container(
            width: 360.w,
            height: 900.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/564x/76/1e/b8/761eb81535806ec7186fdf2abd6453ad.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.5, sigmaY: 3.5),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 750,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.7),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              const Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 5,
                                  shadows: [
                                    Shadow(
                                      color: Color.fromARGB(224, 10, 124, 159),
                                      offset: Offset(5, 5),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              TextFromFieldWidget(
                                hinttext: "khaledaboelhamd....",
                                labeltext: "  Username",
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              TextFromFieldWidget(
                                hinttext: "example..@gamil.com",
                                labeltext: "  Email",
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              TextFromFieldWidget(
                                hinttext: "Must be 4 characters",
                                labeltext: "  Password",
                                sec: true,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              TextFromFieldWidget(
                                hinttext: "Reset Password",
                                labeltext: "  Comfirm Password",
                                sec: true,
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MainPage()));
                                  },
                                  child: Container(
                                    width: 200,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            224, 10, 124, 159),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: const Center(
                                      child: Text(
                                        "Sign Up",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LogIn()));
                                  },
                                  child: const Text("I have already account")),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      )
                    ],
                  )),
            )),
      )),
    );
  }
}

// ignore: must_be_immutable
class TextFromFieldWidget extends StatelessWidget {
  TextFromFieldWidget(
      {super.key, this.hinttext = "", this.labeltext = "", this.sec = false});
  String hinttext, labeltext;
  bool sec;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        obscureText: sec,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Color.fromARGB(100, 255, 255, 255),
          ),
          labelText: labeltext,
          labelStyle: const TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(50)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 4, 50, 130)),
              borderRadius: BorderRadius.circular(50)),
        ),
      ),
    );
  }
}
