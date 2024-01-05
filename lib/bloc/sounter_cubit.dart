import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0);

  void increase(){
    emit(state + 1);
  }

  void decrease(){
    emit(state - 1);
  }

}