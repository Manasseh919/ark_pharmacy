import 'dart:io';

import 'package:ark_pharmacy/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:cloudinary_public/cloudinary_public.dart';

class AdminServices {
  void sellProduct({
    required BuildContext context,
    required String name,
    required String description,
    required double price,
    required double quantity,
    required String category,
    required List<File> images,
  }) async {
    try {
      final cloudinary = CloudinaryPublic('manasseh', 'coding-challenge');
      List<String> imageUrls = [];

       for (int i = 0; i < images.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images[i].path, folder: name),
        );
        imageUrls.add(res.secureUrl);
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
