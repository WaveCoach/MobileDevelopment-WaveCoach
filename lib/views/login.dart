import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _obscureText = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: blueColor,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/LatinWaveCoach.png', width: 250),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                    child: Text(
                      "Come on Board",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "poppins_medium",
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 100, 60),
                    child: Text(
                      "Let's login to your account first!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "poppins_medium",
                        fontSize: 20,
                        color: fadeBlueColor,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                            ),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/LoginEmailIcon.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 64,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              border: Border.all(
                                color: fadeBlueColor,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextFormField(
                                  onChanged: (value) {
                                    setState(() {});
                                  },
                                  controller: emailController,
                                  style: TextStyle(
                                    fontFamily: "poppins_medium",
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(
                                      fontFamily: "poppins_medium",
                                      fontSize: 14,
                                      color: fadeBlueColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 15, 40, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/LoginPasswordIcon.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 64,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              border: Border.all(
                                color: fadeBlueColor,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 15,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      onChanged: (value) {
                                        setState(() {});
                                      },
                                      controller: passwordController,
                                      obscureText: _obscureText,
                                      style: TextStyle(
                                        fontFamily: "poppins_medium",
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                          fontFamily: "poppins_medium",
                                          fontSize: 14,
                                          color: fadeBlueColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      child: Image.asset(
                                        _obscureText
                                            ? 'assets/images/ShowPassword.png'
                                            : 'assets/images/HidePassword.png',
                                        width: 28,
                                        height: 28,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (bool? value) {
                                // Handle checkbox state change
                              },
                              checkColor: blueColor,
                              activeColor: Colors.white,
                              side: BorderSide(color: Colors.white),
                              fillColor: WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.selected)) {
                                    return Colors.white;
                                  }
                                  return Colors.transparent;
                                },
                              ),
                            ),
                            Text(
                              "Remember me",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "poppins_medium",
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "poppins_medium",
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 70, 40, 0),
                    child: GestureDetector(
                      onTap: (){
                        if(emailController.text != "" && passwordController.text != ""){
                          print("Login berhasil dilakukan");
                        } else {
                          print("Email dan Password tidak boleh kosong");
                        }
                      },
                      child: Container(
                        height: 64,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              emailController.text != "" && passwordController.text != ""
                                  ? Colors.white
                                  : Colors.white.withValues(alpha: 0.3),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "poppins_regular",
                              fontSize: 18,
                              color: blueColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
