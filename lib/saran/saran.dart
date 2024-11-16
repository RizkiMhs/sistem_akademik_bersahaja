import 'package:flutter/material.dart';

class Saran extends StatefulWidget {
  const Saran({super.key});

  @override
  State<Saran> createState() => _SaranState();
}

class _SaranState extends State<Saran> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _keluhanController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();

  // Method to show notification dialog
  void _showNotificationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Container(
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kritik dan saran berhasil dikirim',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(128, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                // SizedBox(height: 5,),
                // Image.asset('assets/images/mark_email_read.png'),
                SizedBox(height: 20),
                Icon(
                  Icons.mark_email_read_rounded, // Success icon
                  color: const Color.fromARGB(255, 167, 174, 168),
                  size: 40,
                ),
              ],
            ),
          ),
          actions: [
            Center(
              child: Container(
                width: 268,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 41, 0, 176),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text(
                    'OK',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

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
              // Header Image Container
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 90, 36, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(71),
                    bottomRight: Radius.circular(71),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'asset/image/logo1.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Nama Lengkap Field
              Container(
                width: double.infinity,
                height: 47,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(206, 222, 212, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  controller: _namaController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Nama Lengkap',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 182, 170, 170),
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              // Email Field
              Container(
                width: double.infinity,
                height: 47,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(206, 222, 212, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'E-MAIL',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 182, 170, 170),
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              // Keluhan & Saran Field
              Container(
                width: 319,
                height: 87,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(206, 222, 212, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  controller: _keluhanController,
                  maxLines: 3,
                  maxLength: 500,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Keluhan & Saran',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 182, 170, 170),
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                    counterText: '',
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 50),
              // KIRIM Button
              GestureDetector(
                onTap: () {
                  print("KIRIM");
                  print("Nama: ${_namaController.text}");
                  print("E-Mail: ${_emailController.text}");
                  print("Keluhan & Saran: ${_keluhanController.text}");

                  // Show notification dialog
                  _showNotificationDialog();
                },
                child: Container(
                  width: double.infinity,
                  height: 47,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(8, 90, 36, 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.send_rounded,
                          color: Color.fromARGB(255, 231, 226, 226),
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'KIRIM',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 231, 226, 226),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // KEMBALI Button

              GestureDetector(
                onTap: () {
                  // print("KEMBALI");
                  // print("Nama: ${_namaController.text}");
                  // print("E-Mail: ${_emailController.text}");
                  // print("Keluhan & Saran: ${_keluhanController.text}");
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 319,
                  height: 47,
                  color: Color.fromRGBO(206, 222, 212, 1),
                  child: Center(
                    child: Text(
                      'KEMBALI',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 182, 170, 170),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
