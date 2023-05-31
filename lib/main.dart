import 'package:criclive/features/data/repositories/score_repository_impl.dart';
import 'package:criclive/features/data/sources/score_remote_datasource.dart';
import 'package:criclive/features/domain/usecases/get_latest_score.dart';
import 'package:criclive/features/presentation/bloc/score_bloc.dart';
import 'package:criclive/features/presentation/pages/score_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ScoreBloc(
              getLatestScore: GetLatestScore(
                ScoreRepositoryImpl(
                  remoteDataSource: ScoreRemoteDataSource(),
                ),
              ),
            ),
          ),
        ],
        child:  ScorePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
