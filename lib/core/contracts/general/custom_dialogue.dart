import 'package:flutter/cupertino.dart';

abstract class CustomDialog {
  Future<T> msg<T>(String title, String subtitle,
      {void onOkPressed(), bool confirmCancelVariation});
  void snackbar<T>({@required String title, @required Color bgColor});
}
