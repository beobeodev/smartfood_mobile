import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:smartfood/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smartfood/data/models/ingredient.model.dart';
import 'package:smartfood/modules/search_ingredient/ingredient.dart';

class ListSearchedIngredients extends StatefulWidget {
  const ListSearchedIngredients({super.key});

  @override
  State<ListSearchedIngredients> createState() =>
      _ListSearchedIngredientsState();
}

class _ListSearchedIngredientsState extends State<ListSearchedIngredients> {
  final PagingController<int, IngredientModel> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((_) {
      _listenPageQuest();
    });

    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  void _listenPageQuest() {
    final searchIngredientBloc = context.read<SearchIngredientBloc>();

    PaginationQueryDTO queryDTO = searchIngredientBloc.state.query;
    queryDTO = queryDTO.copyWith(page: queryDTO.page + 1);

    searchIngredientBloc.add(
      SearchIngredientEvent.get(
        isLoadMore: true,
        query: queryDTO,
      ),
    );
  }

  void _listenAppendPages(BuildContext context, SearchIngredientState state) {
    state.maybeWhen(
      success: (isLoadMore, __, ingredients, canLoadMore) =>
          _appendPages(isLoadMore, canLoadMore, ingredients),
      orElse: () {},
    );
  }

  void _appendPages(
    bool isLoadMore,
    bool canLoadMore,
    List<IngredientModel> ingredients,
  ) {
    if (!isLoadMore) {
      _pagingController.refresh();
    }

    if (canLoadMore) {
      _pagingController.appendPage(
        ingredients,
        _pagingController.nextPageKey,
      );
    } else {
      _pagingController.appendLastPage(ingredients);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocConsumer<SearchIngredientBloc, SearchIngredientState>(
        listener: _listenAppendPages,
        builder: (context, state) {
          return state.map(
            loading: (_) => const LoadingIngredientGridView(),
            success: (_) =>
                IngredientGridView(pagingController: _pagingController),
            failure: (_) => const SizedBox(),
          );
        },
        buildWhen: (previous, current) {
          return !current.isLoadMore;
        },
      ),
    );
  }
}
