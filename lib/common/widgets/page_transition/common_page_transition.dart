import 'package:flutter/material.dart';
import 'package:smarthealthy/common/constants/enums/page_transition_type.enum.dart';

/// This package allows you amazing transition for your routes

/// Page transition class extends PageRouteBuilder
class PageTransition<T> extends PageRoute<T> {
  /// Child for your next page
  final WidgetBuilder builder;

  /// Transition types
  ///  fade,rightToLeft,leftToRight, upToDown,downToUp,scale,rotate,size,rightToLeftWithFade,leftToRightWithFade
  final PageTransitionType? type;

  /// Curves for transitions
  final Curve curve;

  final Duration duration;

  final Duration reverseDuration;

  /// Page transition constructor. We can pass the next page as a child,
  PageTransition({
    Key? key,
    required this.builder,
    this.type,
    this.curve = Curves.linear,
    super.settings,
    this.maintainState = true,
    this.duration = const Duration(milliseconds: 300),
    this.reverseDuration = const Duration(milliseconds: 300),
  });

  @override
  final bool maintainState;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    switch (type) {
      case PageTransitionType.fade:
        return SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(0.0, 0.25),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.fastOutSlowIn)),
          ),
          child: FadeTransition(
            opacity: animation.drive(CurveTween(curve: Curves.easeIn)),
            child: child,
          ),
        );

      case PageTransitionType.fadeIn:
        return FadeTransition(
          opacity: animation,
          child: child,
        );

      case PageTransitionType.rightToLeft:
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );

      case PageTransitionType.leftToRight:
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );

      case PageTransitionType.downToUp:
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );

      case PageTransitionType.upToDown:
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, -1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );

      default:
        final PageTransitionsTheme theme =
            Theme.of(context).pageTransitionsTheme;
        return theme.buildTransitions<T>(
          this,
          context,
          animation,
          secondaryAnimation,
          child,
        );
    }

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  Widget buildContent(BuildContext context) => builder(context);

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    final Widget result = buildContent(context);
    return Semantics(
      scopesRoute: true,
      explicitChildNodes: true,
      child: result,
    );
  }

  @override
  Duration get transitionDuration => duration;

  @override
  Duration get reverseTransitionDuration => reverseDuration;
}
