import 'package:flutter/material.dart';
import 'package:syncio_capstone/screens/friends/friend_request_screen.dart';
import 'package:syncio_capstone/screens/message/message_screen.dart';
import 'package:syncio_capstone/screens/newfeed/newsfeed_screen.dart';
import 'package:syncio_capstone/screens/notification/notification_screen.dart';
import 'package:syncio_capstone/screens/general/general_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currenIndex = 0;

  final List<Widget> _tabs = [
    NewsFeedScreen(),
    FriendRequestScreen(),
    MessageScreen(),
    NotificationScreen(),
    GeneralScreen()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currenIndex,
          children: _tabs,
        ),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            currentIndex: _currenIndex,
            onTap: _onTabTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper_outlined),
                activeIcon: Icon(Icons.newspaper),
                label: "News Feed",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people_outline),
                activeIcon: Icon(Icons.people),
                label: "Friend",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined),
                  activeIcon: Icon(Icons.message),
                  label: "Message"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined),
                  activeIcon: Icon(Icons.notifications),
                  label: "Notification"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_outlined),
                  activeIcon: Icon(Icons.menu_open_rounded),
                  label: "General")
            ],
          ),
        ));
  }
}
