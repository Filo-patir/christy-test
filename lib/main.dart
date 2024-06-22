import 'package:flutter/material.dart';
import '../widgets/navigationbar.dart';
import '../widgets/dropdown.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey.shade900,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey.shade900,
            body: Column(
              children: [
                const ListTile(
                  titleTextStyle: TextStyle(fontFamily: 'NotoEmoji'),
                  leading: CircleAvatar(),
                  title: Text(
                    'Hi, Jonathan 👋',
                    style: TextStyle(color: Colors.white60),
                  ),
                  subtitle: Text(
                    'Today\'s Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  trailing: Stack(children: [
                    Icon(
                      Icons.notifications_sharp,
                      color: Colors.white60,
                    ),
                    Positioned(
                      right: 0,
                      child: Icon(
                        Icons.circle_rounded,
                        color: Colors.red,
                        size: 8,
                      ),
                    ),
                  ]),
                ),
                dropdownCard(
                    icon: Icons.directions_run_rounded,
                    backgroundcolor: Colors.lightBlue.shade800,
                    title: 'Daily Walking',
                    subtitle: 'Calories Consumption in a day',
                    widgets: <Widget>[]),
                dropdownCard(
                    icon: Icons.local_pizza_rounded,
                    backgroundcolor: Colors.orange.shade600,
                    title: 'Daily Calories',
                    subtitle: '582 of 2250 calories',
                    widgets: <Widget>[]),
                dropdownCard(
                    icon: Icons.timelapse_sharp,
                    backgroundcolor: Colors.lightBlue.shade800,
                    title: '30 minutes workout',
                    subtitle: 'Today\'s menu: Aerobic workout',
                    widgets: <Widget>[]),
                dropdownCard(
                    icon: Icons.sunny,
                    backgroundcolor: Colors.lightBlue.shade800,
                    title: 'Morning Push Up',
                    subtitle: '8 push up per set • 5 set',
                    widgets: <Widget>[]),
              ],
            ),
            bottomNavigationBar: navigationBar()),
      ),
    );
  }
}
