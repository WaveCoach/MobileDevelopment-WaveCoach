import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Container(
                  color: blueColor,
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 30,
                        left: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Sarah',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'poppins_medium',
                                fontSize: 14,
                                letterSpacing: -0.3,
                              ),
                            ),
                            // SizedBox(height: 12),
                            Text(
                              'Stay Strong Coach!',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'poppins_medium',
                                fontSize: 20,
                                letterSpacing: -0.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        right: 30,
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 40, // Tambahkan properti size di sini
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15), // Tambahkan jarak antara Container dan Text
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
              'Jadwal Latihan',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'poppins_bold',
                color: blueColor,
              ),
              ),
            ),
            ),
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 15, 2.5, 20),
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1000),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          'Semua',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'poppins_medium',
                          ),
                        ),
                      ),
                      Row(
                        children: List.generate(12, (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 2.5),
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1000),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0, 4), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Text(
                              'Bulan ${index + 1}',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'poppins_medium',
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
// Add some space between the scroll view and the icon
              Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 20, 20),
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          'History',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'poppins_medium',
                          ),
                        ),
                      ),
            ],
          ),
          Center(),
        ],
      ),
    );
  }
}
