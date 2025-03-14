import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';
import 'package:wavecoach/views/forgot_password_change_password.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  TextEditingController emailController = TextEditingController();

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
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 60),
                        child: Text(
                          "Masukkan email anda untuk mengubah kata sandi",
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
                    padding: const EdgeInsets.fromLTRB(40, 70, 40, 0),
                    child: GestureDetector(
                      onTap: (){
                        if(emailController.text != ""){
                          Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder:
                                (BuildContext context) => const ForgotPasswordChangeView(),
                          ),
                        );
                        } else {
                          // print("Email dan Password tidak boleh kosong");
                        }
                      },
                      child: Container(
                        height: 64,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              emailController.text != ""
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
