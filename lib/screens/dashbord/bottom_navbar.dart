import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/screens/dashbord/cart_screen.dart';
import 'package:food_delivery_app/screens/dashbord/home_screen.dart';
import 'package:food_delivery_app/screens/dashbord/mesage_screen.dart';
import 'package:food_delivery_app/screens/dashbord/profile_screen.dart';
import 'package:food_delivery_app/screens/dashbord/scan_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
   
   int currentIndex = 0;

   List<Widget> pages = [
          HomeScreen(),
          CartScreen(),
          ScanScreen(),
          MessageScreen(),
          ProfileScreen(),
   ];
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: pages[currentIndex],
       bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (index){
             setState(() {
               currentIndex = index;
             });
        },
        items: const [
          BottomNavigationBarItem(
          icon:Icon(
          Icons.home,
          color: Colors.black,
          ),
          label: 'Home'
          
          ),
          BottomNavigationBarItem(
          icon:Icon(
          Icons.shopping_cart,
          color: Colors.black,
          ),
          label: 'Cart'
          ),
           BottomNavigationBarItem(
          icon:Icon(
          Icons.qr_code,
          color: Colors.black,
          ),
          label: 'Scan'
          ),
            BottomNavigationBarItem(
          icon:Icon(
          Icons.sms,
          color: Colors.black,
          ),
          label: 'Message'
          ),
            BottomNavigationBarItem(
          icon:Icon(
          Icons.person,
          color: Colors.black,
          ),
          label: 'Profile'
          ),
          
        ],
       ),
    );
  }
}