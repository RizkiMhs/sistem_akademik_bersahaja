import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';

class PilihMataKuliah extends StatefulWidget {
  const PilihMataKuliah({super.key});

  @override
  _PilihMataKuliahState createState() => _PilihMataKuliahState();
}

class _PilihMataKuliahState extends State<PilihMataKuliah> {
  List<bool> _selectedCourses = List.generate(7, (index) => false);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
        body: Column(
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
              height: 5,
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
            Expanded(
              child: ListView.builder(
                itemCount: _selectedCourses.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 69,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: index % 2 == 0
                          ? Color(0x2000712D)
                          : Color(0x20FF9100),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: index % 2 == 0
                            ? Color(0xff00712D)
                            : Color(0xffFF9100),
                        width: 2,
                      ),
                    ),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TEKNOLOGI INFORMASI DAN \nKEWIRAUSAHAAN",
                                style: TextStyle(
                                  fontFamily: 'Poppinsbold',
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "DARING 6",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppinsmedium',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(), // Memberikan ruang fleksibel antar elemen
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Selasa",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppinsregular',
                                ),
                              ),
                              Text(
                                "10:31-12:11",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppinsregular',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Checkbox(
                          value: _selectedCourses[index],
                          onChanged: (bool? value) {
                            setState(() {
                              _selectedCourses[index] = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 12,
            ),
          ],
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
                    'Tambah Matakuliah',
                    style: TextStyle(
                      fontFamily: 'Poppinsmedium',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
          "Matakuliah Berhasil Ditambah",
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
