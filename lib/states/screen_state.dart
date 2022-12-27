class ScreenState{
  int currentScreen = 0;

  ScreenState({required this.currentScreen});

  ScreenState changeScreenTo(int latestScreenIndex){
    return ScreenState(currentScreen: latestScreenIndex);
  }
}