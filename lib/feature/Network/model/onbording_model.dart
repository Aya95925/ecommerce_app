import 'package:flutter/material.dart';

class OnboardingModel {
  final String image,backgroundImage;
  final Widget title;
  final String description;

  const OnboardingModel({
    required this.image,
    required this.title,
    required this.description, required this.backgroundImage,
  });
}