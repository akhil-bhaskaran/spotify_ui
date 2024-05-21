import 'package:flutter/material.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/pages/home_page.dart';
import 'package:spotify/pages/library.dart';
import 'package:spotify/pages/search.dart';

class Navigating extends StatefulWidget {
  const Navigating({super.key});

  @override
  State<Navigating> createState() => _NavigatingState();
}

class _NavigatingState extends State<Navigating> {
  int myIndex = 0;
  List<Widget> widgetList = [const HomePage(), const Search(), Library()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      body: IndexedStack(
        index: myIndex,
        children: widgetList,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: bg2,
          currentIndex: myIndex,
          onTap: (value) {
            setState(() {
              myIndex = value;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.my_library_books_rounded,
                ),
                label: 'Library'),
          ]),
    );
  }
}
