import 'package:flutter/material.dart';
import '../model/data_kelas.dart';
import 'detail_mobile_page.dart';
import 'detail_web_page.dart';

class DetailScreen extends StatelessWidget {
  final DataKelas kelas;

  const DetailScreen({super.key, required this.kelas});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(kelas: kelas);
        } else {
          return DetailMobilePage(kelas: kelas);
        }
      },
    );
  }
}
