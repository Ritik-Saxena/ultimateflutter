import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app_ui/bloc/bottom_nav_indicator/bottom_nav_indicator_events.dart';
import 'package:workout_app_ui/bloc/bottom_nav_indicator/bottom_nav_indicator_states.dart';

class TabIndicatorBloc extends Bloc<TabIndicatorEvents, TabIndicatorStates> {
  TabIndicatorBloc() : super(TabIndicatorStates()) {
    on<TabIndicatorEvents>((event, emit) {
      emit(TabIndicatorStates(tabIndex: event.tabIndex));
    });
  }
}
