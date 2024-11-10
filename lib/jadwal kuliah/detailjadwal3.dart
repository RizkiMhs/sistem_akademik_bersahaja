import 'package:flutter/material.dart';
import 'package:flutter_application_1/jadwal%20kuliah/menu_jadwal.dart';
import 'package:flutter_application_1/utils/color.dart';

class detailjadwal3 extends StatefulWidget {
  const detailjadwal3({super.key});

  @override
  State<detailjadwal3> createState() => _detailjadwal3State();
}

class _detailjadwal3State extends State<detailjadwal3> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(90),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15)),
                child: AppBar(
                  backgroundColor: greencolor,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Text(
                          "Jadwal Kuliah",
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 25,
                              color: whitecolor),
                        ),
                        Text(
                          "Rabu",
                          style: TextStyle(
                              fontFamily: 'PoppinsRegular',
                              fontSize: 14,
                              color: whitecolor),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          body: Column(children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 12),
                    child: Text(
                      "< Kembali",
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 2,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  color: orangecolor,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    "Jadwal masuk kuliah : ",
                    style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 12,
                        color: Colors.black),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  color: orangecolor,
                ),
                SizedBox(
                  height: 34,
                ),
                Container(
                  width: double.infinity,
                  height: 85,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: bgcolor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28, top: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matkul",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          "Ruang 1",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        Text(
                          "08.00-10.00",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 10,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  width: double.infinity,
                  height: 85,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: bgcolor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28, top: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matkul",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          "Ruang 1",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        Text(
                          "08.00-10.00",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 10,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  width: double.infinity,
                  height: 85,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: bgcolor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28, top: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matkul",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          "Ruang 1",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        Text(
                          "08.00-10.00",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 10,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  width: double.infinity,
                  height: 85,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: bgcolor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28, top: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matkul",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          "Ruang 1",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        Text(
                          "08.00-10.00",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 10,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
              ],
            )
          ])),
    );
  }
}
