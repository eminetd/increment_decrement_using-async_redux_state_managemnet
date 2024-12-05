// import 'package:flutter/material.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';

// class ColorPickerWidget extends StatelessWidget {
//   final Color currentColor;
//   final void Function(Color) onColorChanged;

//    ColorPickerWidget({super.key, required this.currentColor, required this.onColorChanged});

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: const Text('Pick a color'),
//               content: SingleChildScrollView(
//                 child: ColorPicker(
//                   pickerColor: currentColor,
//                   onColorChanged: onColorChanged,
//                   pickerAreaHeightPercent: 0.8,
//                 ),
//               ),
//               actions: <Widget>[
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: const Text('Got it'),
//                 ),
//               ],
//             );
//           },
//         );
//       },
//       child: const Text('Change Color'),
//     );
//   }
// }
