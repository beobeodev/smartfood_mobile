// import 'package:flutter/cupertino.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
// import 'package:smartfood/common/theme/app_size.dart';

// class CommonPagedGridView<T> extends StatelessWidget {
//   const CommonPagedGridView({
//     required this.pagingController,
//     required this.itemBuilder,
//     required this.gridDelegate,
//     this.animateTransitions = true,
//     this.transitionDuration = const Duration(milliseconds: 500),
//     this.firstPageErrorIndicator,
//     this.newPageErrorIndicator,
//     this.firstPageProgressIndicator,
//     this.newPageProgressIndicator,
//     this.noItemsFoundIndicator,
//     this.noMoreItemsIndicator,
//     this.padding = const EdgeInsets.only(top: AppSize.horizontalSpace),
//     Key? key,
//   }) : super(key: key);

//   final PagingController<int, T> pagingController;
//   final Widget Function(
//     BuildContext context,
//     T item,
//     int index,
//   ) itemBuilder;
//   final bool animateTransitions;
//   final Duration transitionDuration;
//   final Widget? firstPageErrorIndicator;
//   final Widget? newPageErrorIndicator;
//   final Widget? firstPageProgressIndicator;
//   final Widget? newPageProgressIndicator;
//   final Widget? noItemsFoundIndicator;
//   final Widget? noMoreItemsIndicator;

//   final SliverGridDelegate gridDelegate;

//   final EdgeInsetsGeometry padding;

//   @override
//   Widget build(BuildContext context) {
//     final builderDelegate = PagedChildBuilderDelegate<T>(
//       itemBuilder: itemBuilder,
//       animateTransitions: animateTransitions,
//       transitionDuration: transitionDuration,
//       firstPageErrorIndicatorBuilder: (_) =>
//           firstPageErrorIndicator ?? const SizedBox.shrink(),
//       newPageErrorIndicatorBuilder: (_) =>
//           newPageErrorIndicator ?? const SizedBox.shrink(),
//       firstPageProgressIndicatorBuilder: (_) =>
//           firstPageProgressIndicator ?? const SizedBox.shrink(),
//       newPageProgressIndicatorBuilder: (context) {
//         return const Padding(
//           padding: EdgeInsets.all(8),
//           child: CupertinoActivityIndicator(),
//         );
//       },
//       noItemsFoundIndicatorBuilder: (_) =>
//           noItemsFoundIndicator ?? const SizedBox.shrink(),
//       noMoreItemsIndicatorBuilder: (_) =>
//           noMoreItemsIndicator ?? const SizedBox.shrink(),
//     );

//     return PagedGridView<int, T>(
//       pagingController: pagingController,
//       builderDelegate: builderDelegate,
//       gridDelegate: gridDelegate,
//       showNoMoreItemsIndicatorAsGridChild: false,
//       showNewPageProgressIndicatorAsGridChild: false,
//       padding: padding,
//     );
//   }
// }
