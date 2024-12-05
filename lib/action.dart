// import 'dart:math';



import 'dart:math';

import 'package:async_redux/async_redux.dart';

import 'app_state.dart';

enum OPERATION {
  inc,
  dnc,
  sqr,
  sqrt,
}

class IncDncAction extends ReduxAction<AppState> {
  final OPERATION operation;

  IncDncAction({required this.operation});

  @override
  AppState reduce() {

    // print('Reducer called with operation :$operation');
    
    int value = state.number;
  //  print("${value}value");

    switch (operation) {
      case OPERATION.inc:
        if (state.number >= 0) {
          return state.copy(number: ++value);
        } else {
          return state.copy();
        }
      
      case OPERATION.dnc:
        if (state.number > 0) {
          return state.copy(number: --value);
        } else {
          return state.copy();
        }
      case OPERATION.sqr:
      if(state.number >0){
        return state.copy(number: value*value);
      }else{
        return state.copy();
      }
      case OPERATION.sqrt:
        if(state.number >0){
          return state.copy( number: (state.number >= 0) ? sqrt(state.number).round() : state.number);
        }
        else{
          return state.copy();
        }   
    }
  }
}

// class ChangeColorAction extends ReduxAction<AppState> {
//   final Color newColor;

//   ChangeColorAction({required this.newColor});

//   @override
//   AppState reduce() {
//     return state.copy(textColor: newColor);
//   }
// }

// state.copy(number: state.number++);
// ///TODO should go into negative stop
// class DecrementAction extends ReduxAction<AppState> {
//   final int number;

//   DecrementAction({required this.number});

//   @override
//   AppState reduce() {
//     return state.copy(number: state.number > 0 ? state.number - 1 : 0);
//   }
// }


// class MultiplyAction extends ReduxAction<AppState> {
//   final int factor;

//   MultiplyAction({required this.factor});

//   @override
//   AppState reduce() {
//     return state.copy(number: state.number * factor);
//   }
// }

// class DivideAction extends ReduxAction<AppState> {
//   final int divisor;

//   DivideAction({required this.divisor});

//   @override
//   AppState reduce(){


//     return state.copy(number: divisor != 0 ? state.number ~/ divisor : state.number);
//   }
// }


// class SquareRootAction extends ReduxAction<AppState> {
//   @override
//   AppState reduce(){
//     return state.copy( number: (state.number >= 0) ? sqrt(state.number).round() : state.number);
//   }
// }

// class AddTwoNumbersAction extends ReduxAction<AppState> {
//   final int otherNumber;

//   AddTwoNumbersAction({required this.otherNumber});

//   @override
//   AppState reduce(){
//     return state.copy(number: state.number + otherNumber);
//   }
// }



// class SubtractTwoNumbersAction extends ReduxAction<AppState> {
//   final int otherNumber;

//   SubtractTwoNumbersAction({required this.otherNumber});

//   @override
//   AppState reduce(){
//     return state.copy(number: state.number - otherNumber);
//   }
// }
