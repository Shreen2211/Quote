import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qouts_first_api/Model/API_Model/QoutesModel.dart';
import 'package:qouts_first_api/data/Network/dio_helper.dart';
import 'package:qouts_first_api/data/Network/end_point.dart';
part 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial());
  static ApiCubit get(context)=> BlocProvider.of(context);
  QoutesModel? Quote;
  Future<void> getQuote()async{
    emit(GetPlayingLoadingState());
    final Response response=await DioHelper.get(endpoint: EndPoint.endPoint);
    if(response.statusCode ==200){
      Quote=QoutesModel.fromJson(response.data);
      emit(GetPlayingSuccessState());
    }else{
      emit(GetPlayingErrorState());
    }
  }
}