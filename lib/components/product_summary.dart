import 'package:flutter/material.dart';

class ProductSummary {
  final String name;
  final String? title;
  final String imagePath;
  final Map<String, String> skill;
  final String about;
  final String path;
  String _title = "";

  ProductSummary({required this.name, this.title, required this.imagePath, required this.skill, required this.about, required this.path}){
    if(title != null){
      _title = title!;
    }else {
      _title = name;
    }
  }

  String getName(){
    return name;
  }

  String getTitle(){
    return _title;
  }

  String getImagePath(){
    return imagePath;
  }

  Map<String, String> getSkill(){
    return skill;
  }

  String getAbout(){
    return about;
  }

  String getPath(){
    return path;
  }
}