import 'package:flutter/material.dart';

import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: PageView(
            children: const [
              HomePage(),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          // child: CustomNavbar(),
        ),
      ],
    );
  }
}
