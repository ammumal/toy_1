import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'root_viewmodel.g.dart';
part 'root_viewmodel.freezed.dart';

@freezed
class RootState with _$RootState {
  const factory RootState({
    required int navigatorIndex,
}) = _RootState;
}

@riverpod
class RootViewModel extends _$RootViewModel{

  @override
  RootState build() {
    return const RootState(navigatorIndex: 0);
  }

  set navigatorIndex(int index) => state = state.copyWith(navigatorIndex: index);

}