// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:anupkolhewebsite/constants/size.dart';
import 'package:anupkolhewebsite/constants/sns_links.dart';
import 'package:anupkolhewebsite/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

import '../constants/colors.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: double.maxFinite,
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            'Get in touch',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                }
                return buildNameEmailFieldMobile();
              },
            ),
          ),
          const SizedBox(height: 15),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextField(
              hintText: "Your Message",
              maxLines: 16,
            ),
          ),
          // Send Button

          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Get in Touch"),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15),

          // SNS Icon Button Links
          Wrap(
            spacing: 12, runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset(
                  "assets/images/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedin]);
                },
                child: Image.asset(
                  "assets/images/linkedin.png",
                  width: 28,
                ),
              ),
            ],
            // children: [Image.asset("assets/images/github.png")],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return const Row(
      children: [
        // Name
        Flexible(
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(width: 15),
        // Email
        Flexible(
          child: CustomTextField(
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return const Column(
      children: [
        // Name
        Flexible(
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(height: 15),
        // Email
        Flexible(
          child: CustomTextField(
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }
}
