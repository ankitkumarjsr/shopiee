import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopiee/states/app_state.dart';

final appStateProvider = StateNotifierProvider< AppStateNotifier,AppState >((ref) {
  return AppStateNotifier();
});
