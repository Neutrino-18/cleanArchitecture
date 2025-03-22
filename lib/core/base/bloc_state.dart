import 'package:equatable/equatable.dart';

class BlocState extends Equatable {
  @override
  List<Object?> get props => [];
}

/* This is the initial state */
class StateInitial extends BlocState {
  @override
  List<Object?> get props => [];
}

/* This is the loading state */
class StateLoading extends BlocState {
  @override
  List<Object?> get props => [];
}

/* This is the internetError state */
class StateInternetError extends BlocState {
  @override
  List<Object?> get props => [];
}

/* This is the serverError state */
class StateServerError extends BlocState {
  @override
  List<Object?> get props => [];
}

/* This is the success state */
class StateOnSuccess<T> extends BlocState {
  final T response;
  StateOnSuccess(this.response);
  @override
  List<Object?> get props => [];
}
