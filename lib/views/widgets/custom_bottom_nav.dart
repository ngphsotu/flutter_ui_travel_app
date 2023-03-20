import 'package:flutter/material.dart';
import 'package:flutter_ui_travel_app/theme.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      color: bgColor2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/home.png')),
              const SizedBox(width: 8),
              Center(
                child: Text(
                  'Home',
                  style: textStyle3.copyWith(
                    color: mainColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Image(image: AssetImage('assets/notif.png')),
              const SizedBox(width: 8),
              Center(
                child: Text(
                  'Home',
                  style: textStyle3.copyWith(
                    color: mainColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Image(image: AssetImage('assets/menu.png')),
              const SizedBox(width: 8),
              Center(
                child: Text(
                  'Home',
                  style: textStyle3.copyWith(
                    color: mainColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Image(image: AssetImage('assets/setting.png')),
              const SizedBox(width: 8),
              Center(
                child: Text(
                  'Home',
                  style: textStyle3.copyWith(
                    color: mainColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
