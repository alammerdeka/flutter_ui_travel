import 'package:flutter_travel_ui/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/produk1.jpg',
    name: 'Umroh Plus Turkey',
    type: 'Double',
    startTimes: ['9:00', '11:00'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/produk2.jpg',
    name: 'Umroh Plus Dubai',
    type: 'Triple, Single',
    startTimes: ['12:00', '22:00'],
    rating: 4,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/produk3.jpg',
    name: 'Umroh Akhir Ramadhan',
    type: 'Triple, Single',
    startTimes: ['12:00', '22:00'],
    rating: 4,
    price: 200,
  ),
  Activity(
    imageUrl: 'assets/images/produk3.jpg',
    name: 'Umroh Awal Ramadhan',
    type: 'Triple, Single',
    startTimes: ['12:00', '22:00'],
    rating: 4,
    price: 200,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/desti1.jpg',
    city: 'Kairo',
    country: 'Arab',
    description: 'Visit Kairo for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/desti2.jpg',
    city: 'Mesir',
    country: 'Arab',
    description: 'Visit Mesir for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/desti3.jpg',
    city: 'Madinah',
    country: 'Arab',
    description: 'Visit Madinah for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/desti4.jpg',
    city: 'Qatar',
    country: 'Arab',
    description: 'Visit Qatar for an amazing and unforgettable adventure',
    activities: activities,
  ),
];
