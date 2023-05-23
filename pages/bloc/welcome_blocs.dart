import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/pages/bloc/welcome_events.dart';
import 'package:flutter_demo/pages/bloc/welcome_states.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeState()) {
    on<WelcomeEvent>(
      (event, emit) async {
        print('Hiii');
        var retryNum = state.retryNum;
        if (event.retryCount != 0) {
          for (int i = state.retryNum; i >= 0; i--) {
            retryNum = i;
            
            emit(
            WelcomeState(retryNum: retryNum),
          );
            await Future.delayed(const Duration(seconds: 1));
          }
          
        } else {
          print('object');
        }
      },
    );
  }
}
