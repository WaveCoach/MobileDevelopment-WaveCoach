import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/LatinWaveCoach.png',
                width: 120, // Sesuaikan ukuran
              ),
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

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 1), // Garis pinggir
        ),
        child: Row(
          children: [
            // Background putih untuk ikon
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

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 1), // Garis pinggir
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
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
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

    Widget rememberMeAndForgotPassword() {
      return Container(
        margin: EdgeInsets.only(top: 10), // Beri jarak sebelum tombol Sign In
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Checkbox "Remember Me"
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? newValue) {},
                  activeColor: Colors.white, // Warna kotak ceklis
                  checkColor: blueColor, // Warna tanda ceklis
                ),
                Text("Remember Me", style: TextStyle(color: Colors.white)),
              ],
            ),

            // "Forget Password" Text
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

    Widget signInButton() {
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

    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          // Tambahkan ini
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                emailInput(),
                passwordInput(),
                rememberMeAndForgotPassword(),
                signInButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
