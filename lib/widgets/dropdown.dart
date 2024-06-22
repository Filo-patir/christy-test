import 'package:flutter/material.dart';

Padding dropdownCard(
    {required String title,
    required String subtitle,
    required List<Widget> widgets,
    required Color backgroundcolor,
    required IconData icon}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: ExpansionTile(
        tilePadding: const EdgeInsets.all(10),
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icon),
        ),
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        collapsedBackgroundColor: Colors.grey.shade800,
        backgroundColor: backgroundcolor,
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.white60),
        ),
        children: widgets),
  );
}
