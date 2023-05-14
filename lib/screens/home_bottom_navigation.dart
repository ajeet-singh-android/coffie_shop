import 'package:flutter/material.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                spreadRadius: 2)
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home,
              color: Color(0xfff59c00),
              size: 30,
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.verified_user_rounded,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
