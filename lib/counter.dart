// ignore_for_file: prefer_const_constructors

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:increement_decrement/action.dart';
import 'app_state.dart';


class CounterConnecter extends StatelessWidget {
  final Color textcolor;
  const CounterConnecter({super.key,required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState,CounterVM>(
      model: CounterVM(),
      builder: (BuildContext context,CounterVM vm)=>CounterDisplay(
        counter: vm.counter,
        textColor: textcolor,
      ),
    );
  }
}

class CounterVM extends BaseModel<AppState> {
  CounterVM();

  late int counter;
  late Function(OPERATION operation) incDnc;
 

  CounterVM.build({
    required this.counter,
    required this.incDnc,
  }) : super(equals: [
    counter,
    // textColor,
    ]);

  @override
  CounterVM fromStore() => CounterVM.build(
      counter: state.number,
      incDnc: (operation) {
        dispatch!(IncDncAction(operation: operation));
      },
   
  );
}


class CounterDisplay extends StatelessWidget {
  // final CounterVM? vm;
  final Color? textColor;
  final int? counter;

  const CounterDisplay({Key? key,  
  //  this.vm, 
    this.textColor,  this.counter,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                color: textColor,
              ),
            ),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 30,
                color: textColor,
              ),
            ),
          ],
        );
      }
    // return StoreConnector<AppState ,CounterVM >(
    //   converter: (store)=> CounterVM().fromStore(),
    //   builder: (BuildContext context,CounterVM vm){
    //     return 
    //   },
    // );
}





















































// import 'package:flutter/material.dart';
// // import 'package:increement_decrement/action.dart';

// class CounterWidget extends StatelessWidget {
//   final String text;
//   final int counter;
//   // final  Function(OPERATION operation) incDnc;
//   final Color color;
//    CounterWidget({super.key, 
//    required this.text, 
//    required this.color, 
//    required this.counter, 
//   //  required this.incDnc,
   
//    });

//   // Color selectedColor = Colors.red; 

//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//            Text('You have pushed the button this many times:', style: TextStyle(
//               color: color,
//             ),),
//             Text('${counter}', style: TextStyle(
//               fontSize: 30,
//               color: color,
//             ),),
//         ],
//       ),
//     );
//   }
// }