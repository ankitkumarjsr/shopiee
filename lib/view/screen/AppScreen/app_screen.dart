import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopiee/constants/screen_list.dart';
import 'package:shopiee/controllers/controllers.dart';

import '../HomeScreen/components/bottom_navi_bar.dart';
import '../HomeScreen/components/home_appbar.dart';

class AppScreen extends ConsumerWidget {
  const AppScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controlState = ref.watch(appStateProvider.notifier);
    final displayState = ref.watch(appStateProvider);
    return Scaffold(
      bottomNavigationBar: BottomNaviBar(),
      body: listOfScreens[displayState.screenState.currentScreen!],
    );
  }
}