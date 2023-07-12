import 'package:flutter/material.dart';
import 'package:untitled4practicingreduxxfull/redux/state.dart';

import '../view/get/get_model.dart';
import 'actions.dart';

AppState appReducer(AppState previousState, dynamic action) {
  AppState newState = AppState.fromState(previousState);
  if (action is AddAction) {
    if (action.type == 'api data') { print(action.data);
      newState.getinfo = Getmodel.fromMap(action.data);


      debugPrint("bilawal ./././././ ${newState.getinfo?.results!.length}");

    }
  }
  return newState;
}
