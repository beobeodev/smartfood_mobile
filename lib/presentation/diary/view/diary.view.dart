import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary_timeline.widget.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DiaryBloc(),
      child: const _DiaryView(),
    );
  }
}

class _DiaryView extends StatelessWidget {
  const _DiaryView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: context.paddingTop),
        child: const Column(
          children: [DiaryTimeline()],
        ),
      ),
    );
  }
}
