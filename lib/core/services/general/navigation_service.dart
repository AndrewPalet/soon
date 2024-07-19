// import 'package:soon/core/contracts/general/I_navigation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class NavigationService implements INavigation {
//   @override
//   Future getArgs() async {
//     await Future.delayed(Duration.zero);
//     // var args = Get.arguments();
//     // return args;
//     return Get.arguments;
//   }
//
//   @override
//   Future navigateToNamed(
//       String route, {
//         dynamic arguments,
//         int id,
//         bool preventDuplicates = true,
//         Map<String, String> parameters,
//       }) async {
//     return await Get.toNamed(
//       route,
//       arguments: arguments,
//       id: id,
//       preventDuplicates: preventDuplicates,
//       parameters: parameters,
//     );
//   }
//
//   @override
//   Future navigateOffAllNamed(String route,
//       {arguments,
//         RoutePredicate predicate,
//         int id,
//         bool preventDuplicates,
//         Map<String, String> parameters}) async {
//     return await Get.offAllNamed(
//       route,
//       predicate: predicate,
//       arguments: arguments,
//       id: id,
//       parameters: parameters,
//     );
//   }
// }
