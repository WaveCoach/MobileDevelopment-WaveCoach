import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';
import 'package:wavecoach/views/login.dart';

List onboardingData = [
  {
    "title": "Selamat Datang!",
    "description":
        "Lorem ipsum dolor sit amet consecte. Sagittis arcu lacus ullamcorper blandit sed et semper",
    "image": "assets/images/onboarding1.png",
  },
  {
    "title": "Bangun Atlet Hebat",
    "description":
        "Lorem ipsum dolor sit amet consecte. Sagittis arcu lacus ullamcorper blandit sed et semper",
    "image": "assets/images/onboarding2.png",
  },
  {
    "title": "Mentor Inspiratif",
    "description":
        "Lorem ipsum dolor sit amet consecte. Sagittis arcu lacus ullamcorper blandit sed et semper",
    "image": "assets/images/onboarding3.png",
  },
];

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Wrap(
                  spacing: 5,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color:
                            currentPage == 0 ? blueColor : circleBarBlueColor,
                      ),
                      width: currentPage == 0 ? 50 : 15,
                      height: 15,
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color:
                            currentPage == 1 ? blueColor : circleBarBlueColor,
                      ),
                      width: currentPage == 1 ? 50 : 15,
                      height: 15,
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color:
                            currentPage == 2 ? blueColor : circleBarBlueColor,
                      ),
                      width: currentPage == 2 ? 50 : 15,
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),

          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                currentPage = value;
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onboardingData.length,
              itemBuilder: (_, i) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      onboardingData[i]["image"],
                      width: 400, // Adjust the width as needed
                      height: 300, // Adjust the height as needed
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              onboardingData[i]["title"],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "poppins_medium",
                                fontSize: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 46),
                            child: Text(
                              onboardingData[i]["description"],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "poppins_regular",
                                fontSize: 14,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          Column(
            children: [
              GestureDetector(
                onTap: () {
                  if (currentPage == 2) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => 
                        const LoginView())
                    );
                  } else{
                    pageController.animateToPage(
                      currentPage + 1,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    );
                  }
                  
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 70),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      color: blueColor,
                    ),
                    child: Text(
                      currentPage == 2 ? "Login" : "Next",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "poppins_bold",
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
