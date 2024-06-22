import 'package:flutter/material.dart';

BottomNavigationBar navigationBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(
          icon: Icon(Icons.source_outlined), label: 'Library'),
      BottomNavigationBarItem(icon: Icon(Icons.tune_sharp), label: 'Settings'),
    ],
    backgroundColor: Colors.grey.shade900,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white38,
    currentIndex: 0,
  );
}
