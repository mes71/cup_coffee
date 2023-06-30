part of 'root_cubit.dart';

abstract class RootState extends Equatable {
  int currentPage;

  RootState(this.currentPage);
}

class RootInitial extends RootState {
  RootInitial(this.index) : super(index);
  final int index;

  @override
  List<Object> get props => [index];
}
