// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'app_state.dart';
import 'home_page.dart';

late Store<AppState> store;
void main() async {
  final AppState state = await AppState.initialState();
  store = Store<AppState>(initialState: state);
  runApp(
    StoreProvider<AppState>(
      store: store,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePageConnector(),
        
  );
}




































































































































































// import 'package:async_redux/async_redux.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class CounterState {
//   final int counter;

//   CounterState(this.counter);
// }

// class IncrementCounterAction extends ReduxAction<CounterState> {
//   @override
//   CounterState reduce() {
//     return CounterState(state.counter + 1);
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StoreProvider(
//       store: Store<CounterState>(
//         initialState: CounterState(0),
//       ),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             StoreConnector<CounterState, int>(
//               converter: (store) => store.state.counter,
//               builder: (context, counter) {
//                 return Text(
//                   '$counter',
//                   style: Theme.of(context).textTheme.headline6,
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: StoreConnector<CounterState, VoidCallback>(
//         converter: (store) {
//           return () => store.dispatch(IncrementCounterAction());
//         },
//         builder: (context, callback) {
//           return FloatingActionButton(
//             onPressed: callback,
//             tooltip: 'Increment',
//             child: const Icon(Icons.add),
//           );
//         },
//       ),
//     );
//   }
// }
