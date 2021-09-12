import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/models/car_model.dart';

List<BottomNavigationBarItem> _bottomNavigationBarItems = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.explore_outlined),
    label: "Explore",
  ),

  const BottomNavigationBarItem(
    icon: Icon(Icons.bookmark_border),
    label: "Bookmarks",
  ),

  const BottomNavigationBarItem(
    icon: Icon(Icons.add_circle_outline_rounded),
    label: "Add",
  ),

  BottomNavigationBarItem(
    icon: Badge(child: const Icon(Icons.messenger_outline)),
    label: "Message",
  ),

  const BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.square_grid_2x2),
    label: "More",
  ),
];

List<BottomNavigationBarItem> get bottomNavigationBarItems =>
    _bottomNavigationBarItems;

List<String> _bottomNavigationBarTitles = [
  "Explore",
  "Bookmarks",
  "Add",
  "Message",
  "More",
];

List<String> get titles => _bottomNavigationBarTitles;
