import 'package:exercice/screen/add_student.dart';
import 'package:exercice/screen/data/fake_data.dart';
import 'package:exercice/screen/views/home_view.dart';
import 'package:exercice/screen/views/list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: _currentIndex,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) => _currentIndex = index,
        controller: _pageController,
        children: [
          HomeView(),
          ListStudentView(
            data: fakedata,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return AddStudent(candidates: fakedata);
          })));
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          _pageController.jumpToPage(_currentIndex);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.sick), label: 'Patient'),
        ],
      ),
    );
  }
}
