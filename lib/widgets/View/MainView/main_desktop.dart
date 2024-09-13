import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../../../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  Future<Uint8List> _loadPdfFromAssets() async {
    final ByteData pdfData = await rootBundle.load('assets/pdf/AnupKolhe.pdf');
    return pdfData.buffer.asUint8List();
  }

  void _downloadPdf(Uint8List pdfData) {
    final blob = html.Blob([pdfData], 'application/pdf');
    final url = html.Url.createObjectUrl(blob);
    // ignore: unused_local_variable
    final anchor = html.AnchorElement(href: url)
      ..setAttribute("download", "AnupKolhe.pdf")
      ..click();
    html.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Intro message
              const Text(
                "Namaste, \nI am Anup Kolhe \nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // contact btn
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () async {
                    final pdfData = await _loadPdfFromAssets();
                    _downloadPdf(pdfData);
                  },
                  child: const Text('Get my CV'),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/images/flutter_img.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
