import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
// import 'package:dart_openai/dart_openai.dart';

class ImageController extends GetxController {
  final textC = TextEditingController();

  // ignore: non_constant_identifier_names
  Future<void> CreateAIImage() async {
    // OpenAI.apiKey =apikey;
    if (textC.text.trim().isNotEmpty) {
      // user

      textC.text = '';
    }
  }
}
