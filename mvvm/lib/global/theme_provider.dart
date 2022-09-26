

import 'package:flutter/foundation.dart';

class ThemeProvider extends ChangeNotifier{


  bool isLightTheme = true;

  void changeTheme(){
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

}