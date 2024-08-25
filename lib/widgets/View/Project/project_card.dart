import 'package:anupkolhewebsite/utils/project_utils.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.project});

  final ProjectUtils project;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          // Title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          // Sub- Title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          // footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  'Avaiable on:',
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if (project.ioslink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.ioslink]);
                    },
                    child: Image.asset(
                      'assets/images/ios_icon.png',
                      width: 19,
                    ),
                  ),
                if (project.applink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.applink]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Image.asset(
                        'assets/images/android_icon.png',
                        width: 17,
                      ),
                    ),
                  ),
                if (project.weblink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.weblink]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Image.asset(
                        'assets/images/web_icon.png', // Add Git Hub Link
                        width: 17,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
