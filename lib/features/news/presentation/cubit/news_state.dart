part of 'news_cubit.dart';

class NewsSuccess extends BaseState {
  final NewsEntity newsEntity;
  NewsSuccess(this.newsEntity);

  @override
  List<Object?> get props => [newsEntity];
}

class NewsError extends BaseState {
  final String? message;
  NewsError(this.message);
  @override
  List<Object?> get props => [message];
}
