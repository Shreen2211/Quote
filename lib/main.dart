import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qouts_first_api/data/Network/dio_helper.dart';
import 'package:qouts_first_api/view_model/api_cubit.dart';

import 'Screens/HomeScreen.dart';

Future<void> main() async {
  DioHelper.init();
  runApp(MultiBlocProvider(providers: [BlocProvider(create:(context) =>  ApiCubit())],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  ));
}
