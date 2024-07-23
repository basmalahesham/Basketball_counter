import 'package:basketball_counter_app/new_project/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);

  int teamAPoints = 0;

  int teamBPoints = 0;

  /*void teamAIncrement(int buttonNumber) {
    teamAPoints += buttonNumber;
    emit(CounterAIncrementState());
  }

  void teamBIncrement(int buttonNumber) {
    teamBPoints += buttonNumber;
    emit(CounterBIncrementState());
  }*/

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
