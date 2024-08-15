import 'package:anupkolhewebsite/widgets/skill_mobile.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/size.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/projects_section.dart';
import '../widgets/skills_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // //Main
            // if (constraints.maxWidth >= kMinDesktopWidth)
            //   const HeaderDesktop()
            // else
            //   HeaderMobile(
            //     onLogoTap: () {},
            //     onMenuTap: () {
            //       scaffoldKey.currentState?.openEndDrawer();
            //     },
            //   ),

            // if (constraints.maxWidth >= kMinDesktopWidth)
            //   const MainDesktop()
            // else
            //   const MainMobile(),

            // // Skill
            // Container(
            //   height: 500,
            //   width: screenWidth,
            //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
            //   color: CustomColor.bgLight1,
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       //title
            //       const Text(
            //         "What I can do",
            //         style: TextStyle(
            //           fontSize: 24,
            //           fontWeight: FontWeight.bold,
            //           color: CustomColor.whitePrimary,
            //         ),
            //       ),
            //       const SizedBox(height: 50),
            //       //platforms and skill
            //       if (constraints.maxHeight >= kMedDesktopWidth)
            //         const SkillsDesktop()
            //       else
            //         const SkillsMobile(),
            //     ],
            //   ),
            // ),
            // const SizedBox(height: 30),
            // //Projects
            // const ProjectsSection(),

            //Contact
            Container(
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
                    constraints: const BoxConstraints(maxWidth: 700),
                    child: const Row(
                      children: [
                        Flexible(
                          child: CustomTextField(
                            hintText: "Your Name",
                          ),
                        ),
                        SizedBox(width: 15),
                        Flexible(
                          child: CustomTextField(
                            hintText: "Your Email",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 700),
                    child: const CustomTextField(
                      hintText: "Your Message",
                      maxLines: 20,
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
                  )
                ],
              ),
            ),
            //Footer
            // Container(
            //   height: 500,
            //   width: double.maxFinite,
            //   color: Colors.blueGrey,
            // ),
          ],
        ),
      );
    });
  }
}
