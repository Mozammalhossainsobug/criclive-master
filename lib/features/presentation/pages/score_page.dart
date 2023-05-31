import 'package:criclive/features/presentation/bloc/score_bloc.dart';
import 'package:criclive/features/presentation/pages/score_display_page.dart';
import 'package:criclive/features/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cricket Score'),
      ),
      body: BlocBuilder<ScoreBloc, ScoreState>(
        builder: (context, state) {
          if (state is ScoreInitial) {
            return const Center(child: Text('No data'));
          } else if (state is ScoreLoading) {
            return LoadingWidget();
          } else if (state is ScoreLoaded) {
            return ScoreDisplay(scores: state.score);
          } else {
            print(state);
            return ErrorWidget(Error());
          }
        },
      ),
    );
  }
}
