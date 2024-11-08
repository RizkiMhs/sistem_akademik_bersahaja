import 'package:flutter/material.dart';
import 'package:flutter_application_1/bahan%20kuliah/detailbahan.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/views/homepage.dart';

class bahankuliah extends StatefulWidget {
  const bahankuliah({super.key});

  @override
  State<bahankuliah> createState() => _bahankuliahState();
}

class _bahankuliahState extends State<bahankuliah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            child: AppBar(
                backgroundColor: greencolor,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Text(
                        "Bahan Pembelajaran",
                        style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 25,
                            color: whitecolor),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                          "Universitas Malikussaleh",
                          style: TextStyle(
                              fontFamily: 'PoppinsRegular',
                              fontSize: 14,
                              color: whitecolor),
                        ),
                      )
                    ],
                  ),
                )),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext) => const Homepage()));
                  },
                  child: Text(
                    '< Kembali',
                    style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext) => const detailbahan()));
              },
              child: Container(
                width: double.infinity,
                height: 82,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: bgcolor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nama Matkul",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text(
                        "Dosen",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 12,
                            color: Colors.black),
                      ),
                      Text(
                        "semester",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 10,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext) => const detailbahan()));
              },
              child: Container(
                width: double.infinity,
                height: 82,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: bgcolor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nama Matkul",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text(
                        "Dosen",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 12,
                            color: Colors.black),
                      ),
                      Text(
                        "semester",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 10,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext) => const detailbahan()));
              },
              child: Container(
                width: double.infinity,
                height: 82,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: bgcolor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nama Matkul",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text(
                        "Dosen",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 12,
                            color: Colors.black),
                      ),
                      Text(
                        "semester",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 10,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext) => const detailbahan()));
              },
              child: Container(
                width: double.infinity,
                height: 82,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: bgcolor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nama Matkul",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text(
                        "Dosen",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 12,
                            color: Colors.black),
                      ),
                      Text(
                        "semester",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 10,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext) => const detailbahan()));
              },
              child: Container(
                width: double.infinity,
                height: 82,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: bgcolor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nama Matkul",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text(
                        "Dosen",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 12,
                            color: Colors.black),
                      ),
                      Text(
                        "semester",
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 10,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
