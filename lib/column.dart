// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';
// import 'package:increement_decrement/action.dart';
// // import 'package:increement_decrement/clr_picker.dart';

// class MyColumn extends StatefulWidget {
//   final int counter;
//   final  Function(OPERATION operation) incDnc;
//   // final Color textColor;
//   // final Function(Color) onChangeColor;
//    const MyColumn({super.key, 
//   required this.counter, 
//   required this.incDnc, 
//   // required this.textColor, 
//   // required this.onChangeColor
//   });

//   @override
//   State<MyColumn> createState() => _MyColumnState();
// }

// class _MyColumnState extends State<MyColumn> {
// Color selectedColor = Colors.red; 
//  // Default color
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('You have pushed the button this many times:', style: TextStyle(
//               color: selectedColor,
//             ),),
//             Text('${widget.counter}', style: TextStyle(
//               fontSize: 30,
//               color: selectedColor,
//             ),),
//             const SizedBox(height: 30,),
//              ElevatedButton(
//               onPressed: () {
//                 _openColorPicker(context);
//               },
//               child: Text('Open Color Picker'),
//             ),
//             // ColorPickerWidget(
//             //       currentColor: textColor,
//             //       onColorChanged: (Color newColor) {
//             //         onChangeColor(newColor);
//             //       },
//             //     ),
//           ],
//         );
//   }
//   void _openColorPicker(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Pick a color'),
//           content: SingleChildScrollView(
//             child: ColorPicker(
//               pickerColor: selectedColor,
//               onColorChanged: (Color newColor) {
//                 setState(() {
//                   selectedColor = newColor;
//                 });
//               },
//               // showLabel: true,
//               pickerAreaHeightPercent: 0.8,
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Done'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }