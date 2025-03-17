import 'package:flutter/material.dart';
import 'package:wavecoach/utils/colors.dart';

class AbsensiSiswaView extends StatefulWidget {
  const AbsensiSiswaView({super.key});

  @override
  State<AbsensiSiswaView> createState() => _AbsensiSiswaViewState();
}

class _AbsensiSiswaViewState extends State<AbsensiSiswaView> {
  final List<String> siswaList = [
    'Cinta Ramayanti',
    'Rhimba Aulia',
    'Habib Nurrohmad Sugiharto',
  ];

  late List<bool> hadirStatusList;
  late List<bool> tidakHadirStatusList;

  @override
  void initState() {
    super.initState();
    hadirStatusList = List.filled(siswaList.length, false);
    tidakHadirStatusList = List.filled(siswaList.length, false);
  }

  @override
  Widget build(BuildContext context) {
    Widget textAbsensiSiswa() {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Text(
            "Absensi Siswa",
            style: TextStyle(
              fontFamily: "poppins_semibold",
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    Widget textPresensiKehadiran() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: blueColor,
        ),
        child: Text(
          "Presensi Kehadiran",
          style: TextStyle(
            fontFamily: "poppins_semibold",
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      );
    }

    Widget kehadiranButton() {
      return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: siswaList.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${index + 1}. ${siswaList[index]}',
                style: TextStyle(
                  fontFamily: "poppins_medium",
                  fontSize: 20, // Ukuran font yang diinginkan
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            hadirStatusList[index] = true;
                            tidakHadirStatusList[index] = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              hadirStatusList[index]
                                  ? Colors.green
                                  : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Hadir",
                          style: TextStyle(
                            fontFamily: "poppins_regular",
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            hadirStatusList[index] = false;
                            tidakHadirStatusList[index] = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              tidakHadirStatusList[index]
                                  ? Colors.red
                                  : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Tidak hadir",
                          style: TextStyle(
                            fontFamily: "poppins_regular",
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          );
        },
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
                    textAbsensiSiswa(),

                    Positioned(
                      left: 15,
                      top: 70,
                      child: BackButton(text: 'Kembali'),
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
                  textPresensiKehadiran(),

                  kehadiranButton(),
                  
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// ignore: must_be_immutable
class BackButton extends StatelessWidget {
  String text;
  BackButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: "poppins_semibold",
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
