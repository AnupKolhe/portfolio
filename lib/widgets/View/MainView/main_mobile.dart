import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../../../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

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
        horizontal: 40,
        vertical: 30,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/images/flutter_img.png",
              width: screenWidth,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //Intro message
          const Text(
            "Namaste, \nI am Anup Kolhe \nA Flutter Developer",
            style: TextStyle(
              fontSize: 24.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190,
            child: ElevatedButton(
              onPressed: () async {
                final pdfData = await _loadPdfFromAssets();
                _downloadPdf(pdfData);
              },
              child: const Text('Get my CV'),
            ),
          ),
          //Btn
        ],
      ),
    );
  }
}
