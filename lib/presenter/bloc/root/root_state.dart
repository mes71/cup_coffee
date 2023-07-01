part of 'root_cubit.dart';

class RootState extends Equatable {
  final int currentPage;

  const RootState(this.currentPage);

  @override
  List<Object> get props => [currentPage];
}
