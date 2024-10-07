import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newsappbloc_event.dart';
part 'newsappbloc_state.dart';

class NewsappblocBloc extends Bloc<NewsappblocEvent, NewsappblocState> {
  NewsappblocBloc() : super(NewsappblocInitial()) {
    on<NewsappblocEvent>((event, emit) {

    });
  }
}
