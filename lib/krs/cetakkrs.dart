import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';

// import 'package:flutter_application_3/alertkrs.dart';
// import 'package:flutter_application_3/alertmk.dart';

class Cetakkrs extends StatelessWidget {
  const Cetakkrs({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 80, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: const Color(0xff00712D),
                ),
                child: Column(
                  children: [
                    Text(
                      'Kartu Rencana Studi',
                      style: TextStyle(
                        fontFamily: 'Poppinsbold',
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Pilih Matakuliah',
                      style: TextStyle(
                        fontFamily: 'Poppinsregular',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        '<Kembali',
                        style: TextStyle(
                          fontFamily: 'Poppinsbold',
                          fontSize: 25,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                width: double.infinity,
                height: 69,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0x2000712D),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0xff00712D),
                      width: 2,
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 2,
                        height: 45,
                        color: Color(0xff00712D),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          child: Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TEKNOLOGI INFORMASI",
                                style: TextStyle(
                                  fontFamily: 'Poppinsbold',
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "DARING 6",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppinsmedium',
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "selasa",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                          Text(
                            "10:31-12:11",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 69,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0x20FF9100),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0xffFF9100),
                      width: 2,
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 2,
                        height: 45,
                        color: Color(0xff00712D),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          child: Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "STATISTIKA DAN PROBABILITAS",
                                style: TextStyle(
                                  fontFamily: 'Poppinsbold',
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "LAB 1 SISTEM INFORMASI",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppinsmedium',
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "selasa",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                          Text(
                            "10:31-12:11",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                width: double.infinity,
                height: 69,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0x2000712D),
                    border: Border.all(
                      color: Color(0xff00712D),
                      width: 2,
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 2,
                        height: 45,
                        color: Color(0xff00712D),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          child: Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TEKNOLOGI INFORMASI",
                                style: TextStyle(
                                  fontFamily: 'Poppinsbold',
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "DARING 6",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppinsmedium',
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "selasa",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                          Text(
                            "10:31-12:11",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                width: double.infinity,
                height: 69,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0x20FF9100),
                    border: Border.all(
                      color: Color(0xffFF9100),
                      width: 2,
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 2,
                        height: 45,
                        color: Color(0xff00712D),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          child: Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TEKNOLOGI INFORMASI",
                                style: TextStyle(
                                  fontFamily: 'Poppinsbold',
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "DARING 6",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppinsmedium',
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "selasa",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                          Text(
                            "10:31-12:11",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                width: double.infinity,
                height: 69,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0x2000712D),
                    border: Border.all(
                      color: Color(0xff00712D),
                      width: 2,
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 2,
                        height: 45,
                        color: Color(0xff00712D),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          child: Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TEKNOLOGI INFORMASI",
                                style: TextStyle(
                                  fontFamily: 'Poppinsbold',
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "DARING 6",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppinsmedium',
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "selasa",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                          Text(
                            "10:31-12:11",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                width: double.infinity,
                height: 69,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0x20FF9100),
                    border: Border.all(
                      color: Color(0xffFF9100),
                      width: 2,
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 2,
                        height: 45,
                        color: Color(0xff00712D),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          child: Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TEKNOLOGI INFORMASI",
                                style: TextStyle(
                                  fontFamily: 'Poppinsbold',
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "DARING 6",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppinsmedium',
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "selasa",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                          Text(
                            "10:31-12:11",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                height: 69,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0x2000712D),
                    border: Border.all(
                      color: Color(0xff00712D),
                      width: 2,
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 2,
                        height: 45,
                        color: Color(0xff00712D),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          child: Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TEKNOLOGI INFORMASI",
                                style: TextStyle(
                                  fontFamily: 'Poppinsbold',
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "DARING 6",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppinsmedium',
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "selasa",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                          Text(
                            "10:31-12:11",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppinsregular',
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext) {
                      return Alert();
                    });
              },
              child: Container(
                height: 48,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Color(0xff005A24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Cetak KRS',
                      style: TextStyle(
                        fontFamily: 'Poppinsmedium',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )),
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
          "Berhasil",
          style: TextStyle(
            fontFamily: 'Poppinsmedium', // Font style
            fontSize: 15, // Ukuran font
            fontWeight: FontWeight.bold, // Menebalkan teks
            color: Color(0x50000000), // Warna teks
          ),
        ),
      ),
      content: Icon(
        Icons.cloud_done_rounded,
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
