import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopiee/controllers/controllers.dart';
import 'package:shopiee/view/screen/ProfileScreen/profile_screen.dart';

class BottomNaviBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controlState=ref.watch(appStateProvider.notifier);
    final displayState=ref.watch(appStateProvider);
    return BottomNavigationBar(
      currentIndex: displayState.screenState.currentScreen!,
      onTap: (value) {
        controlState.changeScreenTo(value);
      },
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.black54,
      iconSize: 26,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "",
            backgroundColor: Colors.yellow),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
          ),
          label: "",
          backgroundColor: Colors.blue,
        ),
      ],
    );
  }
}
