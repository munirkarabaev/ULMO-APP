part of 'newsappbloc_bloc.dart';

sealed class NewsappblocState extends Equatable {
  const NewsappblocState();
}

final class NewsappblocInitial extends NewsappblocState {
  @override
  List<Object> get props => [];
}
