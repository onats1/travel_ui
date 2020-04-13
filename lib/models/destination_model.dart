import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination(
      {this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.activities});
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/image1.jpeg',
    name: 'Beautiful Restaurant to eat',
    type: 'Restaurant',
    startTimes: ['9:00 pm', '11:00 pm'],
    rating: 4,
    price: 210
  ),

  Activity(
    imageUrl: 'assets/images/image2.jpeg',
    name: 'Beautiful Restaurant to eat',
    type: 'Restaurant',
    startTimes: ['9:00 pm', '11:00 pm'],
    rating: 4,
    price: 210
  ),

  Activity(
    imageUrl: 'assets/images/image3.jpg',
    name: 'Beautiful Restaurant to eat',
    type: 'Restaurant',
    startTimes: ['9:00 pm', '11:00 pm'],
    rating: 4,
    price: 210
  )
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/image4.jpg',
    activities: activities,
    city: 'Tokyo',
    country: 'Japan',
    description: 'Somewhere to wine and dine'
  ),

  Destination(
    imageUrl: 'assets/images/image5.jpg',
    activities: activities,
    city: 'Lagos',
    country: 'Nigeria',
    description: 'A messed up country'
  ),

  Destination(
    imageUrl: 'assets/images/image1.jpeg',
    activities: activities,
    city: 'Paris',
    country: 'France',
    description: 'Romance in the air'
  ),

  Destination(
    imageUrl: 'assets/images/image2.jpeg',
    activities: activities,
    city: 'New york',
    country: 'US',
    description: 'Workaholics'
  )
];
