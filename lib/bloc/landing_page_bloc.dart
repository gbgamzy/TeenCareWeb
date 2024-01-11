import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'landing_page_event.dart';
part 'landing_page_state.dart';

class LandingPageBloc extends Bloc<LandingPageEvent, LandingPageState> {
  LandingPageBloc() : super(LandingPageInitial()) {
    on<LandingPageEvent>((event, emit) {
    });
  }
}
