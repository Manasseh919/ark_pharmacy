import 'package:flutter/material.dart';

String uri = 'http://localhost:4000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(32, 38, 57, 255),
      Color.fromARGB(63, 76, 119, 255),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(26, 36, 33, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://www.pilldoctor.com.gh/wp-content/uploads/2021/02/bnr-img1.png',
    'https://newcrystalhealth.org/obm/wp-content/uploads/2019/09/5-1.jpg',
    'https://newcrystalhealth.org/obm/wp-content/uploads/2019/09/Slide-2-Online-Pharmacy.jpg',
    'https://addpharma4u.com/wp-content/uploads/2021/05/WEN-1.png',
    'https://addpharma4u.com/wp-content/uploads/2020/12/h1-new03.png',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Tools',
      'image': 'assets/images/tools.jpeg',
    },
    {
      'title': 'Essentials',
      'image': 'assets/images/essentials.jpeg',
    },
    {
      'title': 'Mother',
      'image': 'assets/images/mother.jpeg',
    },
    {
      'title': 'Sex & Wellness',
      'image': 'assets/images/sex&wellness.jpeg',
    },
    {
      'title': 'Baby',
      'image': 'assets/images/baby.jpeg',
    },
  ];
}
