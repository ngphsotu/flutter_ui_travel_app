class Place {
  final String imageUrl;
  final String country;
  final String city;
  final String description;
  final String event;

  Place({
    required this.imageUrl,
    required this.country,
    required this.city,
    required this.description,
    required this.event,
  });
}

final places = [
  Place(
    imageUrl: 'assets/bali.jpg',
    country: 'Indonesia',
    city: 'Bali',
    description:
        'Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.',
    event: '',
  ),

  //
  Place(
    imageUrl: 'assets/paris.jpg',
    country: 'France',
    city: 'Paris',
    description:
        'Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.',
    event: '',
  ),

  //
  Place(
    imageUrl: 'assets/rio.jpg',
    country: 'Brazil',
    city: 'Rio de Janiro',
    description:
        'Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.',
    event: 'Rio Carnival',
  ),
];

final events = [
  Place(
    imageUrl: "assets/rio.jpg",
    city: "Rio de Janiro",
    country: "Brazil",
    description:
        "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
    event: "Rio Carnival",
  ),

  //
  Place(
    imageUrl: "assets/japan.jpg",
    city: "Tokyo",
    country: "Japan",
    description:
        "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
    event: "Sapporo Snow Festival",
  ),

  //
  Place(
    imageUrl: "assets/paris.jpg",
    city: "Paris",
    country: "France",
    description:
        "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
    event: "",
  ),
];
