import 'package:shopiee/states/screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppState {
  ScreenState screenState;
  AppState({required this.screenState});
  AppState copyWith({ScreenState? latestScreenState}) {
    return AppState(screenState: latestScreenState ?? screenState);
  }
}

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier()
      : super(AppState(screenState: ScreenState(currentScreen: 0)));

  @override
  AppState get state => super.state;
  changeScreenTo(int latestScreenIndex) {
    state = state.copyWith(
        latestScreenState: state.screenState.changeScreenTo(latestScreenIndex));
  }
}
