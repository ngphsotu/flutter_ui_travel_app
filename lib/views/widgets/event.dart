import 'package:flutter/material.dart';
import 'package:flutter_ui_travel_app/theme.dart';

import '/models/place.dart';

class Event extends StatelessWidget {
  final Place place;

  // const Event(Place event, {super.key, required this.place});

  const Event(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 210,
      padding: const EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(place.imageUrl),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            place.event,
            style: textStyle3.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            place.city,
            style: textStyle3.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Image(
                image: AssetImage('assets/map.png'),
              ),
              const SizedBox(width: 6),
              Text(
                place.country,
                style: textStyle3.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
