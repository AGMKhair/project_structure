

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:project_structure/architecture/app_state.dart';
import 'package:project_structure/architecture/reducers/app_reducer.dart';
import 'package:project_structure/architecture/routes/routes_action.dart';
import 'package:project_structure/resourse/util/string_dictionary.dart';
import 'package:project_structure/screen/test_screen.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key, store});

  final store = Store<AppState>(appReducer, initialState: AppState.initial(), middleware: [thunkMiddleware]);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: StringDictionary.APP_NAME,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const TestScreen(),
        onGenerateRoute: RoutesAction.generateRoute,
      ),
    );
  }
}
