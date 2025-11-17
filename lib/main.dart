import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote/viewModel/api_cubit.dart';
import 'Screens/HomeScreen.dart';
import 'data/Network/dio_helper.dart';

Future<void> main() async {
  DioHelper.init();
  runApp(MultiBlocProvider(providers: [BlocProvider(create:(context) =>  ApiCubit())],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  ));
}
