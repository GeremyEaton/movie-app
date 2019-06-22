import 'package:flutter/foundation.dart';
import 'package:movie_app/core/enums/viewState.dart';

class BaseModel extends ChangeNotifier {

  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  void process(Function f) async {
    setState(ViewState.Busy);
    await f();
    setState(ViewState.Idle);
  }

}