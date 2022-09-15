import 'package:flutter/material.dart';

class HomeMobileScreen extends StatelessWidget {
  const HomeMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(),
          drawer: const Drawer(),
          body: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
