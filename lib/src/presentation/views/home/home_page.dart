import 'package:flutter/material.dart';
import 'package:web_application/src/config/responsive.dart';
import 'package:web_application/src/presentation/views/home/home_desktop_screen.dart';
import 'package:web_application/src/presentation/views/home/home_mobile_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyResponsive(
      desktop: HomeDesktopScreen(),
      tablet: HomeDesktopScreen(),
      mobile: HomeMobileScreen(),
    );
  }
}
