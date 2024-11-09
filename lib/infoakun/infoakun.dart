import 'package:flutter/material.dart';
import 'package:flutter_application_1/info/pesan.dart';
import 'package:flutter_application_1/infoakun/datadiri.dart';
import 'package:flutter_application_1/infoakun/ubahsandi.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/views/homepage.dart';

class infoakun extends StatefulWidget {
  const infoakun({super.key});

  @override
  State<infoakun> createState() => _infoakunState();
}

class _infoakunState extends State<infoakun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            child: AppBar(
              backgroundColor: greencolor,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Text(
                      "Informasi Akun",
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
                    )
                  ],
                ),
              ),
            ),
          )),
      body: Column(
        children: [
          SizedBox(
            height: 34,
          ),
          Container(
            width: double.infinity,
            height: 113,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: orangecolor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 89,
                  height: 89,
                  child: Image.asset('asset/image/profile.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat Datang',
                      style: TextStyle(
                        fontFamily: 'PoppinsRegular',
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      'Pulan Bin Fulan',
                      style: TextStyle(
                        fontFamily: 'Poppinsmedium',
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      '230199080',
                      style: TextStyle(
                        fontFamily: 'PoppinsRegular',
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 53,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whitecolor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Status Mahasiswa",
                    style:
                        TextStyle(fontFamily: 'Poppinssemibold', fontSize: 18),
                  ),
                  Container(
                    width: 67,
                    height: 27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: greencolor)),
                    child: Center(
                      child: Text("Aktif"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext) => const datadiri()));
            },
            child: Container(
              width: double.infinity,
              height: 53,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whitecolor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('asset/image/User Folder.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Data Diri",
                          style: TextStyle(
                              fontFamily: 'Poppinssemibold', fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ">",
                          style: TextStyle(
                              fontFamily: 'Poppinssemibold', fontSize: 25),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext) => const ubahsandi()));
            },
            child: Container(
              width: double.infinity,
              height: 53,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whitecolor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('asset/image/User Folder.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Ubah Password",
                          style: TextStyle(
                              fontFamily: 'Poppinssemibold', fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ">",
                          style: TextStyle(
                              fontFamily: 'Poppinssemibold', fontSize: 25),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 53,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Center(
              child: Text(
                "Keluar",
                style: TextStyle(
                    fontFamily: 'Poppinssemibold',
                    fontSize: 18,
                    color: whitecolor),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: orangecolor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext) => const Pesan()));
                  },
                  child: Container(
                    child: Image.asset('asset/image/Circled Envelope.png'),
                  ),
                ),
                // SizedBox(
                //   width: 68,
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext) => const Homepage()));
                  },
                  child: Container(
                    child: Image.asset('asset/image/Home (1).png'),
                  ),
                ),
                // SizedBox(
                //   width: 62,
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext) => const infoakun()));
                  },
                  child: Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Image.asset('asset/image/User.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
