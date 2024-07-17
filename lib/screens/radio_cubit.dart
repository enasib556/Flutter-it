// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

class RadioCubit extends Cubit<int> {
  RadioCubit() : super(0);

  void selectRadio(int index) => emit(index);
}
