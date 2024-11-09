import 'package:flutter/material.dart';
import 'package:flutter_application_1/jadwal%20kuliah/detailjadwal.dart';
import 'package:flutter_application_1/jadwal%20kuliah/detailjadwal2.dart';
import 'package:flutter_application_1/jadwal%20kuliah/detailjadwal3.dart';
import 'package:flutter_application_1/jadwal%20kuliah/detailjadwal4.dart';
import 'package:flutter_application_1/jadwal%20kuliah/detailjadwal5.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/views/homepage.dart';

class jadwalkuliah extends StatefulWidget {
  const jadwalkuliah({super.key});

  @override
  State<jadwalkuliah> createState() => _jadwalkuliahState();
}

class _jadwalkuliahState extends State<jadwalkuliah> {
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
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              child: AppBar(
                backgroundColor: greencolor,
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
                        "Universitas Malikussaleh",
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
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 12),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext) => const Homepage()));
                    },
                    child: Text(
                      "< Kembali",
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
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
                  height: 44,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => const detailjadwal1()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 53,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: orangecolor),
                    child: Center(
                      child: Text(
                        "Senin",
                        style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 18,
                            color: whitecolor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => const detailjadwal2()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 53,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: orangecolor),
                    child: Center(
                      child: Text(
                        "Selasa",
                        style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 18,
                            color: whitecolor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => const detailjadwal3()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 53,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: orangecolor),
                    child: Center(
                      child: Text(
                        "Rabu",
                        style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 18,
                            color: whitecolor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => const detailjadwal4()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 53,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: orangecolor),
                    child: Center(
                      child: Text(
                        "Kamis",
                        style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 18,
                            color: whitecolor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => const detailjadwal5()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 53,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: orangecolor),
                    child: Center(
                      child: Text(
                        "Jum'at",
                        style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 18,
                            color: whitecolor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
