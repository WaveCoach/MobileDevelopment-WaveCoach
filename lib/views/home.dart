import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';
import 'package:wavecoach/views/notification_detail.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  final List<String> monthNames = [
    'Semua',
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'July',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember',
  ];

  int _selectedMonthIndex = 0; // Add this line

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
                  color: blackBlueColor,
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
                      SizedBox(width: 20),
                      Row(
                        children: List.generate(13, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedMonthIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 2.5,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 7,
                              ),
                              decoration: BoxDecoration(
                                color: _selectedMonthIndex == index ? blueColor : Colors.white,
                                borderRadius: BorderRadius.circular(1000),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withValues(alpha: 0.5),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: Offset(
                                      0,
                                      4,
                                    ), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Text(
                                monthNames[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'poppins_medium',
                                  color: _selectedMonthIndex == index ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(width: 1, height: 40, color: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 20, 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Text(
                  'History',
                  style: TextStyle(fontSize: 16, fontFamily: 'poppins_medium'),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationDetailView(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: boxJadwal,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  color: blueColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                      '17',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 47,
                                        fontFamily: 'poppins_bold',
                                        height: 0.9,
                                      ),
                                      ),
                                    ),
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                      'Januari',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'poppins_bold',
                                      ),
                                      ),
                                    ),
                                    
                                  ],
                                  ),
                                ),
                                )
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                    Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      bottom: 5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                          color: waktuBoxJadwal,
                                          borderRadius: BorderRadius.circular(1000),
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: Text(
                                          "14.00 - 15.00 WIB",
                                          style: TextStyle(
                                            fontFamily: "poppins_medium",
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                          ),
                                        ),
                                        Expanded(child: Container()), // This will push the next container to the right
                                        Container(
                                          decoration: BoxDecoration(
                                          color: reschedule,
                                          borderRadius: BorderRadius.circular(1000),
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: Text(
                                          "Reschedule",
                                          style: TextStyle(
                                            fontFamily: "poppins_medium",
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Senin, 17 Januari 2025",
                                    style: TextStyle(
                                      fontFamily: "poppins_medium",
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "Kolam Renang Marina Surabaya",
                                      style: TextStyle(
                                        fontFamily: "poppins_medium",
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
    );
  }
}
