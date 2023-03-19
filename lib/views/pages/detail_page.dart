import 'package:flutter/material.dart';

import '/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Description
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 400),
              decoration: BoxDecoration(color: bgColor2),
              child: Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: ListView(
                  children: [
                    const SizedBox(height: 160),
                    Text('Description', style: textStyle2),
                    const SizedBox(height: 9),
                    Text(
                      'Bali is famous for beaches, countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture with colorfuls ceremonies and magnificent temples gifted artists the producing',
                      style: textStyle4,
                    ),
                  ],
                ),
              ),
            ),
          ),

          //
          SafeArea(
            child: Container(
              height: 230,
              margin: const EdgeInsets.only(top: 310),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: ListView(
                children: [
                  const SizedBox(height: 110),
                  Row(
                    children: [
                      Text(
                        'Bali ,',
                        style: textStyle1.copyWith(color: mainColor),
                      ),
                      const SizedBox(width: 9),
                      Text(
                        'Indonesia',
                        style: textStyle1.copyWith(color: mainColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Center(
                              child: Image.asset('assets/star.png'),
                            ),
                          ),
                          const SizedBox(width: 9),
                          Text('4.92', style: textStyle2),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Center(
                              child: Image.asset('assets/awan.png'),
                            ),
                          ),
                          const SizedBox(width: 9),
                          Text('27ºC', style: textStyle2),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Center(
                              child: Image.asset('assets/pesawat.png'),
                            ),
                          ),
                          const SizedBox(width: 9),
                          Text('9 am', style: textStyle2),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Image
          SafeArea(
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/nusa.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
          ),

          // Back button
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 30, left: 30),
              child: GestureDetector(
                child: Image.asset('assets/back.png'),
                onTap: () {
                  print('Tap back button');
                },
              ),
            ),
          ),

          //
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              color: bgColor,
              height: 68,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Starting From', style: textStyle4),
                      Text(
                        '500 - 750',
                        style: textStyle2.copyWith(color: mainColor),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text('Book Now', style: textStyle2),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
