import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState.initial(0));

  get currentIndex => state.index;

  void changePage(int index) => emit(NavigationState.initial(index));
}
