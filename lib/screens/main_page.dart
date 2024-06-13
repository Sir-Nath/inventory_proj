import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_inventory/screens/store.dart';
import '../data/user.dart';
import 'add_inventory.dart';
import 'overview_page.dart';

class MainPage extends StatefulWidget {
  final User user;
  const MainPage({
    required this.user,
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: (index == 0)
          ? GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddInventoryScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff103EEE),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 10.h,
                ),
                child: const Text(
                  'Add Inventory',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Overview',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.inventory),
          //   label: 'Inventories',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
        ],
      ),
      body: SafeArea(
        child: index == 0
            ? const Overview()
            // : index == 1
            //     ? const Inventories()
            : Store(user: widget.user),
      ),
    );
  }
}
