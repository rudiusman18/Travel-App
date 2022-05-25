import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  FocusNode fullNameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode hobbyFocusNode = FocusNode();
  TextEditingController fullNameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            top: 30,
          ),
          width: 213,
          height: 72,
          child: Text(
            'Join us and get your next journey',
            style: titleTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget signUpInput({
      String? name,
      String? hintText,
      TextEditingController? controllerVariable,
      FocusNode? focus,
    }) {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$name',
              style: titleTextStyle,
            ),
            Focus(
              // Digunakan untuk menangkap autofocus dari textformfield kemudian memberikan setstate untuk memberikan efek focus kepada hint text
              onFocusChange: (onfocus) {
                setState(() {});
              },
              child: TextFormField(
                onTap: () {
                  setState(
                      () {}); // melakukan refresh kepada input tertentu setiap kali bagian input ditekan
                },
                style: titleTextStyle.copyWith(
                  fontSize: 16,
                ),
                cursorColor: primaryColor,
                focusNode: focus,
                autofocus: true,
                obscureText: name == 'Password' ? true : false,
                controller: controllerVariable,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: backgroundColor),
                  ),
                  hintText: '$hintText',
                  hintStyle: titleTextStyle.copyWith(
                    fontSize: 16,
                    color: focus!.hasFocus ? titleColor : backgroundColor,
                  ),
                  alignLabelWithHint: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: primaryColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSubmit() {
      return Align(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: TextButton(
            onPressed: () {
              print(fullNameController.text);
              print(emailController.text);
              print(passwordController.text);
              print(hobbyController.text);
            },
            child: Text(
              'Get Started',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            title(),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                children: [
                  signUpInput(
                    name: 'Full Name',
                    hintText: 'Full Name',
                    controllerVariable: fullNameController,
                    focus: fullNameFocusNode,
                  ),
                  signUpInput(
                    name: 'Email Address',
                    hintText: 'Email Address',
                    controllerVariable: emailController,
                    focus: emailFocusNode,
                  ),
                  signUpInput(
                    name: 'Password',
                    hintText: 'Password',
                    controllerVariable: passwordController,
                    focus: passwordFocusNode,
                  ),
                  signUpInput(
                    name: 'Hobby',
                    hintText: 'Hobby',
                    controllerVariable: hobbyController,
                    focus: hobbyFocusNode,
                  ),
                  buttonSubmit(),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Terms and Conditions',
                style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
