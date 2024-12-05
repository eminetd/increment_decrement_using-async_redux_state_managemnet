// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'action.dart';
import 'app_state.dart';
import 'counter.dart';
import 'four_buttons.dart';

class HomePage extends StatefulWidget {
 final int counter;
  final  Function(OPERATION operation) incDnc;
  // final Color textColor;
  // final Function(Color) onChangeColor;

  HomePage({Key? key, 
  required this.counter, 
  required this.incDnc, 
  // required this.textColor, 
  // required this.onChangeColor,
  })
      : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
Color selectedColor = Colors.black; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Increment Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CounterConnecter(
            textcolor: selectedColor,
          ),
            // CounterDisplay(
            //   textColor: selectedColor,
            // ),
            
             SizedBox(height: 30,),
             ElevatedButton(
              onPressed: () {
                _openColorPicker(context);
              },
              child: Text('Open Color Picker'),
            ),
           
          ],
        ),
      ),
      floatingActionButton: FourButtons(incDnc: widget.incDnc),
    );
  }

  
  void _openColorPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pick a color'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: selectedColor,
              onColorChanged: (Color newColor) {
                setState(() {
                  selectedColor = newColor;
                });
              },
              pickerAreaHeightPercent: 0.8,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Done'),
            ),
          ],
        );
      },
    );
  }
}




class MyHomePageConnector extends StatelessWidget {
  const MyHomePageConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomePageVM>(
      model: HomePageVM(),
      builder: (BuildContext context, HomePageVM vm) => HomePage(
        counter: vm.counter,
        incDnc: vm.incDnc,
        // textColor: vm.textColor,
        // onChangeColor: vm.onChangeColor,
      ),
    );
  }
}

class HomePageVM extends BaseModel<AppState> {
  HomePageVM();

  late int counter;
  late Function(OPERATION operation) incDnc;
  // late Color textColor;
  // late void Function(Color) onChangeColor;

  HomePageVM.build({
    required this.counter,
    required this.incDnc,
    // required this.textColor,
    // required this.onChangeColor,
  }) : super(equals: [
    counter,
    // textColor,
    ]);

  @override
  HomePageVM fromStore() => HomePageVM.build(
      counter: state.number,
      incDnc: (operation) {
        dispatch!(IncDncAction(operation: operation));
      },
      // textColor: state.textColor!,
      // onChangeColor: (Color newColor) =>
      //   dispatch!(ChangeColorAction(newColor: newColor),),
  );
}