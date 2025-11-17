part of 'api_cubit.dart';

@immutable
abstract class ApiState {}

class ApiInitial extends ApiState {}
class GetPlayingLoadingState extends ApiState{}
class GetPlayingSuccessState extends ApiState{}
class GetPlayingErrorState extends ApiState{}