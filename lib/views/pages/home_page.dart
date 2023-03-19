import 'package:flutter/material.dart';

import '/theme.dart';
import '/models/place.dart';
import '/views/widgets/event.dart';
import '../widgets/place_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'All',
      'Asia',
      'America',
      'Europe',
      'Australia',
    ];

    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/user.jpg'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Micelle,',
                          style: textStyle2,
                        ),
                        Text(
                          'Good Morning',
                          style: textStyle4.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                const Image(image: AssetImage('assets/cari.png')),
              ],
            ),
          ),

          //
          Container(
            margin: const EdgeInsets.only(top: 25, left: 30),
            child: Text(
              'Let\'s enjoy your \nVocation',
              style: textStyle1,
            ),
          ),

          //
          Container(
            height: 30,
            margin: const EdgeInsets.only(top: 25, left: 30),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: titles.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      Text(
                        titles[index],
                        style: textStyle4.copyWith(
                          color: (index == 0) ? mainColor : white,
                        ),
                      ),
                      (index == 0)
                          ? Container(
                              width: 20,
                              height: 2,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                );
              },
            ),
          ),

          //
          Container(
            margin: const EdgeInsets.only(top: 36, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Countries', style: textStyle2),
                Text('See All', style: textStyle4),
              ],
            ),
          ),

          //
          Container(
            height: 200,
            margin: const EdgeInsets.only(left: 30, top: 20),
            child: ListView.builder(
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: PlaceCard(index: index, place: places[index]),
                );
              },
            ),
          ),

          //
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ongoing Events',
                  style: textStyle2,
                ),
                Text(
                  'See All',
                  style: textStyle4,
                ),
              ],
            ),
          ),

          //
          Container(
            width: 230,
            height: 210,
            margin: const EdgeInsets.only(top: 40, right: 30, left: 30),
            child: ListView.builder(
              itemCount: events.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Event(events[index]),
                );
              },
            ),
          ),
          const SizedBox(height: 100)
        ],
      ),
    );
  }
}
