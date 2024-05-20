import 'package:anupkolhewebsite/constants/nav_bar.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //Main
          Container(
            height: 60,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            // color: Colors.blueGrey,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.transparent, CustomColor.bgLight1],
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                const Text(
                  'Anup',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const Spacer(),
                for (int i = 0; i < navTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        navTitles[i],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          //Skill
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //Projects
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //Contact
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //Footer
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
