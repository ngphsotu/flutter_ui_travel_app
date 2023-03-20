import 'package:flutter/material.dart';

import 'home_page.dart';
import '../widgets/custom_bottom_nav.dart';

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
        const Align(
          alignment: Alignment.bottomCenter,
          child: CustomNavBar(),
        ),
      ],
    );
  }
}
