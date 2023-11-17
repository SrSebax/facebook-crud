import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* APPBAR
      appBar: AppBar(
        title: Text('Facebook $currentPage'),
        elevation: 0,
      ),
      // ? CAMBIAR PANTALLA
      body: PageView(
        children: const [
          CustomScreen(
            color: Color.fromARGB(255, 59, 89, 152),
          ), //* COLOR DE FACEBOOK

          CustomScreen(color: Colors.blue),
        ],
      ),
      // body: const CustomScreen(
      //   color: Colors.blue,
      // * TABS
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (index) {
            currentPage = index;

            setState(() {});
          },
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.app_registration), label: 'Register'),
            BottomNavigationBarItem(
                icon: Icon(Icons.verified_user_outlined), label: 'User'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}

class CustomScreen extends StatelessWidget {
  const CustomScreen({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child: const Center(
          child: Text('Custom Screen'),
        ));
  }
}
