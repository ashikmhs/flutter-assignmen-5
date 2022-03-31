// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  final _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              icon: const Icon(Icons.lightbulb),
              onPressed: () {
                Get.isDarkMode
                    ? Get.changeTheme(ThemeData.light())
                    : Get.changeTheme(ThemeData.dark());
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Lottie.network(
                Get.isDarkMode
                    ? 'https://assets6.lottiefiles.com/packages/lf20_3b0nevpm.json'
                    : "https://assets3.lottiefiles.com/packages/lf20_s50p1rff.json",
                height: 150.h,
                width: 150.w,
              ),
              SizedBox(
                height: 30.h,
              ),
              TextFormField(
                validator: (email) {
                  if (email!.isEmpty) {
                    return 'Enter a valid email';
                  } else if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      .hasMatch(email)) {
                    return "Please enter a valid email";
                  } else {
                    return null;
                  }
                },
                //autovalidateMode: AutovalidateMode.always,
                controller: _controller,
                keyboardType: TextInputType.emailAddress,
                autofillHints: [AutofillHints.email],
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    color: Colors.blueAccent,
                  ),
                  labelStyle: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.blueAccent,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                validator: (pass) {
                  if (pass == '123456') {
                    return null;
                  } else {
                    return 'Enter a valid password';
                  }
                },
                controller: _controller2,
                //autovalidateMode: AutovalidateMode.always,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: Colors.blueAccent,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.blueAccent,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.blueAccent,
                  //   ),
                  // ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/second-page');
                    _controller.clear();
                    _controller2.clear();
                  }
                },
                child: Text(
                  'sign_in_btn'.tr,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
