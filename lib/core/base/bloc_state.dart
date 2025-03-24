import 'package:equatable/equatable.dart';

class BaseState extends Equatable {
  @override
  List<Object?> get props => [];
}

/* This is the initial state */
class StateInitial extends BaseState {
  @override
  List<Object?> get props => [];
}

/* This is the loading state */
class StateLoading extends BaseState {
  @override
  List<Object?> get props => [];
}

/* This is the internetError state */
class StateInternetError extends BaseState {
  @override
  List<Object?> get props => [];
}

/* This is the serverError state */
class StateServerError extends BaseState {
  @override
  List<Object?> get props => [];
}

class StateError<String> extends BaseState {
  final String message;
  StateError(this.message);

  @override
  List<Object?> get props => [message];
}

/* This is the success state */
class StateOnSuccess<T> extends BaseState {
  final T response;
  StateOnSuccess(this.response);
  @override
  List<Object?> get props => [];
}
