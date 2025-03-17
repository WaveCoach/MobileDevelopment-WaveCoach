import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';
import 'package:wavecoach/views/login.dart';

class ForgotPasswordChangeView extends StatefulWidget {
  const ForgotPasswordChangeView({super.key});

  @override
  State<ForgotPasswordChangeView> createState() =>
      _ForgotPasswordChangeViewState();
}

class _ForgotPasswordChangeViewState extends State<ForgotPasswordChangeView> {
  bool _obscureTextPassword = true;
  bool _obscureTextReTypePassword = true;

  TextEditingController passwordController = TextEditingController();
  TextEditingController reTypePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mengatur agar keyboard tidak menutupi textfield
      resizeToAvoidBottomInset: false,
      // Warna Background
      backgroundColor: blueColor,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 25,
              top: 80,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Kembali",
                      style: TextStyle(
                        fontFamily: "poppins_semibold",
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/LatinWaveCoach.png',
                        width: 121,
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 60, 30, 20),
                        child: Text(
                          "Forgot Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "poppins_bold",
                            fontSize: 45,
                            color: Colors.white,
                            height: 1, // Line height
                            letterSpacing: -0.5, // Letter spacing
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 0, 80, 60),
                        child: Text(
                          "Jaga baik-baik Kata sandimu Coach!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "poppins_medium",
                            fontSize: 20,
                            color: fadeBlueColor,
                            height: 1.27, // Line height
                            letterSpacing: -0.5, // Letter spacing
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 64,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
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
                                          obscureText: _obscureTextPassword,
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
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _obscureTextPassword = !_obscureTextPassword;
                                            });
                                          },
                                          child: Image.asset(
                                            _obscureTextPassword
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
                        padding: const EdgeInsets.fromLTRB(40, 15, 40, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 64,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
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
                                          controller: reTypePasswordController,
                                          obscureText: _obscureTextReTypePassword,
                                          style: TextStyle(
                                            fontFamily: "poppins_medium",
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Retype Password",
                                            hintStyle: TextStyle(
                                              fontFamily: "poppins_medium",
                                              fontSize: 14,
                                              color: fadeBlueColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _obscureTextReTypePassword = !_obscureTextReTypePassword;
                                            });
                                          },
                                          child: Image.asset(
                                            _obscureTextReTypePassword
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
                        padding: const EdgeInsets.fromLTRB(40, 70, 40, 0),
                        child: GestureDetector(
                          onTap: () {
                            if (passwordController.text != "" && reTypePasswordController.text != "") {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder:
                                      (BuildContext context) =>
                                          const LoginView(),
                                ),
                              );
                            } else {
                              print("Password tidak boleh kosong");
                            }
                          },
                          child: Container(
                            height: 64,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:
                                  passwordController.text != "" &&reTypePasswordController.text != ""
                                      ? Colors.white
                                      : Colors.white.withValues(alpha: 0.3),
                            ),
                            child: Center(
                              child: Text(
                                "Submit",
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
          ],
        ),
      ),
    );
  }
}
