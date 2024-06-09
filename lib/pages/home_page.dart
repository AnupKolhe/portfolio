import 'package:anupkolhewebsite/constants/skill_items.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';

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
            //Main
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),

            //Skill
            Container(
              height: 500,
              width: screenWidth,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              color: Colors.blueGrey,
              child: Column(
                children: [
                  //title
                  Text(
                    "What I can do",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  //platforms and skill
                  Row(
                    children: [
                      Wrap(
                        children: [
                          for (int i = 0; i < platformItems.length; i++)
                            Container(
                              width: 200,
                              decoration: BoxDecoration(
                                  color: CustomColor.bgLight2,
                                  borderRadius: BorderRadius.circular(5)),
                              child: ListTile(
                                leading: Image.asset(platformItems[i]["img"]),
                                title: Text(platformItems[i]["title"]),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
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
    });
  }
}
