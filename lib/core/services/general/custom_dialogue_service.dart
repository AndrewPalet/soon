// import 'package:countdown_app/assets/my_app_theme.dart';
// import 'package:countdown_app/core/contracts/general/custom_dialogue.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class CustomDialogService implements CustomDialog {
//   @override
//   Future<T> msg<T>(String title, String subtitle,
//       {void Function() onOkPressed, bool confirmCancelVariation}) async {
//     return await Get.defaultDialog<T>(
//       title: '',
//       actions: confirmCancelVariation != null
//           ? [
//         Padding(
//           padding: EdgeInsets.all(10.0),
//           child: TextButton(
//             child: Text(
//               'continue',
//               style: Get.textTheme.dialogMsgButtonTS,
//             ),
//             onPressed: () {
//               Get.back(result: true);
//             },
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.all(10.0),
//           child: TextButton(
//             child: Text(
//               'cancel',
//               style: Get.textTheme.dialogMsgButtonTS,
//             ),
//             onPressed: () {
//               Get.back(result: false);
//             },
//           ),
//         ),
//       ]
//           : [
//         Padding(
//           padding: EdgeInsets.all(10.0),
//           child: TextButton(
//             child: Text(
//               'OK',
//               style: Get.textTheme.dialogMsgButtonTS,
//             ),
//             onPressed: () {
//               if (onOkPressed != null) {
//                 onOkPressed();
//               } else {
//                 Get.back();
//               }
//             },
//           ),
//         ),
//       ],
//       content: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 10.0),
//         child: Column(
//           children: [
//             Text(
//               title,
//               style: Get.textTheme.dialogMsgHeaderTS,
//             ),
//             SizedBox(
//               height: 15.0,
//             ),
//             Text(
//               subtitle,
//               textAlign: TextAlign.center,
//               style: Get.textTheme.dialogMsgBodyTS,
//             ),
//             SizedBox(
//               height: 15.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void snackbar<T>({@required String title, @required Color bgColor}) {
//     Get.snackbar<T>(
//       '',
//       '',
//       backgroundColor: bgColor,
//       titleText: Text(
//         title,
//         textAlign: TextAlign.center,
//         style: Get.textTheme.snackBarMsgTextStyle,
//       ),
//     );
//   }
// }
