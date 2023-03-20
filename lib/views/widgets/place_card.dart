import 'package:flutter/material.dart';
import 'package:flutter_ui_travel_app/theme.dart';

import '/models/place.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  final int index;

  const PlaceCard({super.key, required this.place, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 170,
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(place.imageUrl),
                  ),
                ),
              ),
              (index == 0)
                  ? Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            )),
                        child: Center(
                          child: Image.asset('assets/start.png'),
                        ),
                      ),
                    )
                  : const SizedBox()
            ],
          ),
          Container(
            width: 120,
            height: 30,
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(place.city, style: textStyle3),
            ),
          ),
        ],
      ),
    );
  }
}
