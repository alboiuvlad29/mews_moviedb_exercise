import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/ui/loading_widget.dart';
import 'package:mews_moviedb_exercise/src/movies_search/application/movie_search_bloc.dart';
import 'package:mews_moviedb_exercise/src/movies_search/ui/movie_list_item.dart';

class MoviesSearchResultList extends StatefulWidget {
  const MoviesSearchResultList({Key? key}) : super(key: key);

  @override
  State<MoviesSearchResultList> createState() => _MoviesSearchResultListState();
}

class _MoviesSearchResultListState extends State<MoviesSearchResultList> {
  final PagingController<int, Movie> _controller =
      PagingController<int, Movie>(firstPageKey: 0);
  late StreamSubscription<MovieSearchState> _streamSubscription;

  @override
  void initState() {
    final MovieSearchBloc _bloc = context.read<MovieSearchBloc>();
    _controller.addPageRequestListener((int pageKey) {
      _bloc.onNewPageRequest(pageKey);
    });
    _streamSubscription = _bloc.stream.listen((MovieSearchState event) {
      _controller.value = PagingState<int, Movie>(
          itemList: event.items,
          nextPageKey: event.nextPage,
          error: event.error);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      sliver: PagedSliverList<int, Movie>.separated(
        pagingController: _controller,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 8),
        builderDelegate: PagedChildBuilderDelegate<Movie>(
          newPageProgressIndicatorBuilder: (_) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: LoadingIndicator(
              size: 48,
            ),
          ),
          firstPageProgressIndicatorBuilder: (_) => const SizedBox(),
          itemBuilder: (BuildContext context, Movie item, int index) =>
              MovieListItem(item: item),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _streamSubscription.cancel();
    super.dispose();
  }
}
