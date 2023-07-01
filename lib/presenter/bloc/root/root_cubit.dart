import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(const RootState(0));

  void selectPage(int index) => emit(RootState(index));
}
