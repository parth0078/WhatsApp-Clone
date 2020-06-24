import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String imageUrl;

  CallModel({this.name, this.time, this.imageUrl});
}

List callData = [
  CallModel(
    name: "Akshay kumar",
    time: "Today, 12:09 pm",
    imageUrl: "https://im.rediff.com/movies/2019/feb/27kritisanon1.jpg",
  ),
  CallModel(
    name: "Parth kumar",
    time: "Today, 10:05 pm",
    imageUrl: "https://im.rediff.com/movies/2019/feb/27kritisanon1.jpg",
  ),
  CallModel(
    name: "Bhavi kumar",
    time: "Today, 5:00 pm",
    imageUrl: "https://im.rediff.com/movies/2019/feb/27kritisanon1.jpg",
  ),
  CallModel(
    name: "Harsh kumar",
    time: "Today, 12:09 pm",
    imageUrl: "https://im.rediff.com/movies/2019/feb/27kritisanon1.jpg",
  ),
  CallModel(
    name: "Aditya kumar",
    time: "Today, 12:09 pm",
    imageUrl: "https://im.rediff.com/movies/2019/feb/27kritisanon1.jpg",
  ),
];
