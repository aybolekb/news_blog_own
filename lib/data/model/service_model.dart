import 'dart:convert';

import 'package:flutter/material.dart';

class ServiceModell {
  final String title;
  final int id;
  final IconData leading;
  final IconData trailing;

  ServiceModell(
      {required this.title,
      required this.leading,
      required this.trailing,
      required this.id});

  factory ServiceModell.fromJson(Map<String, dynamic> json) {
    return ServiceModell(
        title: json['title'],
        leading: json['leading'],
        trailing: json['trailing'],
        id: json['id']);
  }
}
