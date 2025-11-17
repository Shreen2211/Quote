import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Component/ImageCustom.dart';
import '../Component/TextCustom.dart';
import '../viewModel/api_cubit.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageCustom.imageBackground,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: BlocProvider(
            create: (context) => ApiCubit()..getQuote(),
            child: BlocConsumer<ApiCubit, ApiState>(
              listener: (context, state) {
              },
              builder: (context, state) {
                var cubit = ApiCubit.get(context);
                return cubit.Quote != null
                    ? SafeArea(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                IconData(
                                  0xe2bc,
                                  fontFamily: 'MaterialIcons',
                                ),
                                color: Colors.white,
                                size: 70,
                              ),
                              Container(
                                margin: EdgeInsets.all(20),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0x85424141),
                                ),
                                child: TextCustom.qoute(cubit.Quote!.quote!.body!),
                              ),
                              const Icon(
                                IconData(
                                  0xe2bc,
                                  fontFamily: 'MaterialIcons',
                                ),
                                color: Colors.white,
                                size: 70,
                              ),
                              ElevatedButton(onPressed: (){
                                cubit.getQuote();
                              }, child: Text("Another quote"))
                            ],
                          ),
                        ),
                      )
                    : const Center(
                        child:CircularProgressIndicator(),
                      );
              },
            ),
          ),
        ),
      ],
    );
  }
}
