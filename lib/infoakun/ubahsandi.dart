import 'package:flutter/material.dart';
import 'package:flutter_application_1/infoakun/infoakun.dart';
import 'package:flutter_application_1/utils/color.dart';

class ubahsandi extends StatefulWidget {
  const ubahsandi({super.key});

  @override
  State<ubahsandi> createState() => _ubahsandiState();
}

class _ubahsandiState extends State<ubahsandi> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: bgcolor,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              child: AppBar(
                backgroundColor: greencolor,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Text(
                        "Ubah Passorwd",
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
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 18,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("< Kembali",
                        style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 25,
                        )),
                  )),
            ),
            SizedBox(
              height: 18,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 5),
                child: Text(
                  'Password Lama',
                  style: TextStyle(fontFamily: 'Poppinsmedium', fontSize: 16),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 56,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: bg3color),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    border: InputBorder.none,
                    hintText: 'masukkan password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xff00712D),
                    )),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 5),
                child: Text(
                  'Password Baru',
                  style: TextStyle(fontFamily: 'Poppinsmedium', fontSize: 16),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 56,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: bg3color),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    border: InputBorder.none,
                    hintText: 'masukkan password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xff00712D),
                    )),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 5),
                child: Text(
                  'Konfirmasi Password Baru',
                  style: TextStyle(fontFamily: 'Poppinsmedium', fontSize: 16),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 56,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: bg3color),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    border: InputBorder.none,
                    hintText: 'masukkan password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xff00712D),
                    )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext) {
                          return Alert();
                        });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: orangecolor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(double.infinity, 56)),
                  child: Center(
                      child: Text(
                    'Simpan',
                    style: TextStyle(
                      fontFamily: 'Poppinsmedium',
                      fontSize: 14,
                      color: Color(0xFFFFFFFF),
                    ),
                  ))),
            )
          ]),
        ),
      ),
    );
  }
}

// untuk membuat alert dialog
class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          "password berhasil diubah",
          style: TextStyle(
            fontFamily: 'Poppinsmedium', // Font style
            fontSize: 16, // Ukuran font
            fontWeight: FontWeight.bold, // Menebalkan teks
            color: Color(0x50000000), // Warna teks
          ),
        ),
      ),
      content: Icon(
        Icons.beenhere_rounded,
        size: 71,
        color: Color(0xff4D4C50),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff1400FF)),
                child: Center(
                    child: Text(
                  "Oke",
                  style: TextStyle(
                      fontFamily: 'Poppinsmedium',
                      fontSize: 14,
                      color: whitecolor),
                ))))
      ],
    );
  }
}
