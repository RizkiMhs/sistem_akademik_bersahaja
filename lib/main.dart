import 'package:flutter/material.dart';
import 'package:flutter_application_1/bahan%20kuliah/bahankuliah.dart';
import 'package:flutter_application_1/bahan%20kuliah/detailbahan.dart';
import 'package:flutter_application_1/infoakun/infoakun.dart';
import 'package:flutter_application_1/khs/info_khs.dart';
import 'package:flutter_application_1/khs/khs1.dart';
import 'package:flutter_application_1/krs/krs.dart';
import 'package:flutter_application_1/krs/pilihmk.dart';
import 'package:flutter_application_1/saran/saran.dart';
import 'package:flutter_application_1/tagihan/riwayat.dart';
import 'package:flutter_application_1/tagihan/tagihan.dart';
import 'package:flutter_application_1/trNilai/transkipnilai.dart';
import 'package:flutter_application_1/views/homepage.dart';
import 'package:flutter_application_1/views/tes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homepage(),
    );
  }
}
