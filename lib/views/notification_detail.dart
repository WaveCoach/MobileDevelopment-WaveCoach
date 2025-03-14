import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';

class NotificationDetailView extends StatefulWidget {
  const NotificationDetailView({super.key});

  @override
  State<NotificationDetailView> createState() => _NotificationDetailViewState();
}

class _NotificationDetailViewState extends State<NotificationDetailView> {
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
                  image: DecorationImage(
                    image: AssetImage('assets/images/notificationHeader.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter.add(
                      Alignment(0, 0.3),
                    ), // You can change this alignment as needed
                  ),
                ),
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
                  ],
                ),

              ),
            ),
          ),
          Positioned(
            top: 230,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Coach Sarah",
                    style: TextStyle(
                      fontFamily: "poppins_semibold",
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Pengajuan Peminjaman Inventaris",
                    style: TextStyle(
                      fontFamily: "poppins_semibold",
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "06 Februari 2025, 13:00",
                    style: TextStyle(
                      fontFamily: "poppins_medium",
                      fontSize: 16,
                      color: greyColor.withValues(alpha: 0.75),
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(color: greyColor.withValues(alpha: 0.5), thickness: 1),
                  SizedBox(height: 16),
                  Text(
                    "This is a detailed paragraph about the notification. "
                    "It can contain multiple lines of text and will be scrollable "
                    "if it exceeds the available space. You can add more content here "
                    "to simulate a longer paragraph. This is just an example to show "
                    "how the text will be displayed in the scrollable area."
                    "This is a detailed paragraph about the notification. "
                    "It can contain multiple lines of text and will be scrollable "
                    "if it exceeds the available space. You can add more content here "
                    "to simulate a longer paragraph. This is just an example to show "
                    "how the text will be displayed in the scrollable area."
                    "This is a detailed paragraph about the notification. "
                    "It can contain multiple lines of text and will be scrollable "
                    "if it exceeds the available space. You can add more content here "
                    "to simulate a longer paragraph. This is just an example to show "
                    "how the text will be displayed in the scrollable area."
                    "This is a detailed paragraph about the notification. "
                    "It can contain multiple lines of text and will be scrollable "
                    "if it exceeds the available space. You can add more content here "
                    "to simulate a longer paragraph. This is just an example to show "
                    "how the text will be displayed in the scrollable area.",
                    style: TextStyle(
                      fontFamily: "poppins_regular",
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 35,
            right: 35,
            child: FloatingActionButton(
              backgroundColor: fadeYellowColor,
              onPressed: () {
                // Add your onPressed code here!
              },
              child: Text(
                "Menuju Jadwal Latihan",
                style: TextStyle(fontFamily: "poppins_semibold", fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
