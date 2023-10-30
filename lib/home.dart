import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'counter/counter_bloc.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: SizedBox(width: 350.w, height: 150.h,
                  child: Text(
                    state.counterValue.toString(),
                    style: TextStyle(fontSize: 32.sp, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 50.h,),
              Row(
                children: [
                  SizedBox(width: 50.w,),
                  GestureDetector(onTap: (){
                    context.read<CounterBloc>().add(IncrementEvent());
                  },
                    child: Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFF53B175),
                        shape: OvalBorder(),
                      ),
                      child: Icon(Icons.add, size: 34.sp,),
                    ),
                  ),
                  SizedBox(width: 50.w,),
                  GestureDetector(onTap:  (){
                    context.read<CounterBloc>().add(DecrementEvent());
                  },
                    child: Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFF53B175),
                        shape: OvalBorder(),
                      ),
                      child: Icon(Icons.minimize_outlined, size: 34.sp,),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
