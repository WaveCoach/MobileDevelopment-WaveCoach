import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';

class FormRescheduleJadwalView extends StatefulWidget {
  const FormRescheduleJadwalView({super.key});

  @override
  State<FormRescheduleJadwalView> createState() =>
      _FormRescheduleJadwalViewState();
}

class _FormRescheduleJadwalViewState extends State<FormRescheduleJadwalView> {
  @override
  Widget build(BuildContext context) {
    Widget textFormRescheduleTitle() {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 35, right: 35),
          child: Text(
            "Form Reschedule Jadwal",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "poppins_semibold",
              fontSize: 32,
              color: Colors.white,
              height: 1, // Line height
              letterSpacing: -0.5, // Letter spacing
            ),
          ),
        ),
      );
    }

    Widget textAlasan() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: blueColor,
        ),
        child: Text(
          "Alasan",
          style: TextStyle(
            fontFamily: "poppins_semibold",
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      );
    }

    Widget inputAlasan() {
      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: TextField(
          maxLines: 5, // Increase the height of the TextField
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: 'Ketik disini',
          ),
        ),
      );
    }

    Widget floatingActionButton() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {
            // Tambahkan aksi yang diinginkan di sini
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF264C6B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 15),
          ),
          child: Text(
            "Upload",
            style: TextStyle(
              fontFamily: "poppins_semibold",
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
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
                    textFormRescheduleTitle(),

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
          Positioned(
            top: 230,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [textAlasan(), SizedBox(height: 20), inputAlasan()],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: floatingActionButton(),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
