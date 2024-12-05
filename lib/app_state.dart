
class AppState {
    int number;
    // final Color? textColor;
    // int counter;


  AppState({
    required this.number,
    // required this.counter,
    //  this.textColor
  });

  AppState copy({
    int? number,
    // int? counter,
    // Color? textColor,
  }) =>
      AppState(
        number: number ?? this.number,
        // counter: counter ?? this.counter,
        // textColor: textColor ?? this.textColor
      );

  static Future<AppState> initialState() async {
    return AppState(
      number: 0,
      // counter: 0,
      // textColor: Colors.red,
    );
  }
}
