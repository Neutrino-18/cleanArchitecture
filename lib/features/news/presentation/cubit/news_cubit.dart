import 'package:final_clean/core/base/bloc_state.dart';
import 'package:final_clean/di/service_locator.dart';
import 'package:final_clean/features/news/domain/entity/news_entity.dart';
import 'package:final_clean/features/news/domain/usecases/get_news_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<BaseState> {
  NewsCubit() : super(StateInitial());

  final newsUseCase = getIt.get<GetNews>();

  Future<void> getNews() async {
    emit(StateLoading());

    final result = await newsUseCase.getNews();

    result.fold(
      (failure) => emit(NewsError(failure.errorMessage)),
      (news) => emit(NewsSuccess(news)),
    );
  }
}
