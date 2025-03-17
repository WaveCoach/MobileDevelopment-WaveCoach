import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _rememberMe = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                _emailInput(),
                _passwordInput(),
                _rememberMeAndForgotPassword(),
                _signInButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      margin: EdgeInsets.only(top: 150),
      child: Column(
        children: [
          Center(
            child: Image.asset('assets/images/LatinWaveCoach.png', width: 120),
          ),
          SizedBox(height: 10),
          Text(
            'Come On Board',
            style: secondaryTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Let’s login to your\n account first!',
            style: grayTextStyle.copyWith(fontSize: 22, fontWeight: medium),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Center(child: Icon(Icons.email, color: blueColor)),
          ),
          Expanded(
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                hintStyle: TextStyle(color: Colors.white70),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _passwordInput() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Center(child: Icon(Icons.lock, color: blueColor)),
          ),
          Expanded(
            child: TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white70),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: Colors.white70,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _rememberMeAndForgotPassword() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                value: _rememberMe,
                onChanged: (bool? newValue) {
                  setState(() {
                    _rememberMe = newValue ?? false;
                  });
                },
                activeColor: Colors.white,
                checkColor: blueColor,
              ),
              Text("Remember Me", style: TextStyle(color: Colors.white)),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/forgot-password');
            },
            child: Text(
              "Forget Password?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _signInButton() {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text('Sign In'),
      ),
    );
  }
}
