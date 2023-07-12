import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:untitled4practicingreduxxfull/redux/reducer.dart';
import 'package:untitled4practicingreduxxfull/redux/state.dart';
import 'package:untitled4practicingreduxxfull/splash_screen.dart';



final Store<AppState> store = Store<AppState>(
  appReducer,
  initialState: AppState(),
);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

// void main() {
//   runApp(
//     StoreProvider(
//       store: store,
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: SplashScreen(),
//         ),
//       ),
//     ),
//   );
// }
