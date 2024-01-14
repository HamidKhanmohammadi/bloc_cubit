import 'package:bloc_cubit/bloc/sounter_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterCubit, int>(
                builder: (context, state) {
                  return Directionality(
                    textDirection: TextDirection.ltr,
                      child: Text(state.toString(), style: TextStyle(fontSize: 20),));
                },
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increase();
                  }, child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text("increase"))),
                  SizedBox(width: 20,),
                  ElevatedButton(onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrease();
                  }, child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text("decrease"))),
                ],
              )
            ],
          ),
        )
    );
  }
}
