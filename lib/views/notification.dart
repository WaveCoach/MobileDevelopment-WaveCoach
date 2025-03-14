import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';
import 'package:wavecoach/views/notification_detail.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationState();
}

class _NotificationState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text(
                          "Notifikasi",
                          style: TextStyle(
                            fontFamily: "poppins_semibold",
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 70,
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
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
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 230,
            child: SingleChildScrollView(
              child: Column(
                children: [
                    Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                      "Hari ini",
                      style: TextStyle(
                        fontFamily: "poppins_semibold",
                        fontSize: 18,
                      ),
                      ),
                    ),
                    ),
                    Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 20,
                      right: 20,
                    ),
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
                        color: Colors.white,
                        boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.25),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                        children: [
                          Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: ClipOval(
                            child: Image.asset(
                            'assets/images/coachSarah.jpg',
                            width: 45,
                            height: 45,
                            fit: BoxFit.cover,
                            ),
                          ),
                          ),
                          Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Text(
                              "Coach Sarah",
                              style: TextStyle(
                                fontFamily: "poppins_medium",
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              ),
                            ),
                            Text(
                              "Pengajuan Peminjaman Inventaris",
                              style: TextStyle(
                              fontFamily: "poppins_medium",
                              fontSize: 14,
                              color: Colors.black,
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet consectetur. Lacinia sed tincidunt turpis.",
                              style: TextStyle(
                              fontFamily: "poppins_regular",
                              fontSize: 14,
                              color: greyColor,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 10),
                              child: Text(
                              "06 Januari 2025, 13:14",
                              style: TextStyle(
                                fontFamily: "poppins_regular",
                                fontSize: 14,
                                color: greyColor,
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
                    Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                        color: Colors.black.withValues(alpha: 0.25),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      ),
                      child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: ClipOval(
                          child: Image.asset(
                            'assets/images/coachSarah.jpg',
                            width: 45,
                            height: 45,
                            fit: BoxFit.cover,
                          ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 5),
                            child: Text(
                              "Coach Sarah",
                              style: TextStyle(
                              fontFamily: "poppins_medium",
                              fontSize: 17,
                              color: Colors.black,
                              ),
                            ),
                            ),
                            Text(
                            "Pengajuan Peminjaman Inventaris",
                            style: TextStyle(
                              fontFamily: "poppins_medium",
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            ),
                            Text(
                            "Lorem ipsum dolor sit amet consectetur. Lacinia sed tincidunt turpis.",
                            style: TextStyle(
                              fontFamily: "poppins_regular",
                              fontSize: 14,
                              color: greyColor,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            ),

                            Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 10),
                            child: Text(
                              "06 Januari 2025, 13:14",
                              style: TextStyle(
                              fontFamily: "poppins_regular",
                              fontSize: 14,
                              color: greyColor,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
