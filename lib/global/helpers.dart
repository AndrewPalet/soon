import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Contains useful functions to reduce boilerplate code
class Helpers {
  /// Vertical spacing constants. Adjust to your liking.
  static const double _VerticalSpaceSmall = 10.0;
  static const double _VerticalSpaceMedium = 20.0;
  static const double _VerticalSpaceLarge = 60.0;

  /// Vertical spacing constants. Adjust to your liking.
  static const double _HorizontalSpaceSmall = 10.0;
  static const double _HorizontalSpaceMedium = 20.0;
  static const double HorizontalSpaceLarge = 60.0;

  /// Returns a vertical space with height set to [_VerticalSpaceSmall]
  static Widget verticalSpaceSmall() {
    return verticalSpace(_VerticalSpaceSmall);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceMedium]
  static Widget verticalSpaceMedium() {
    return verticalSpace(_VerticalSpaceMedium);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceLarge]
  static Widget verticalSpaceLarge() {
    return verticalSpace(_VerticalSpaceLarge);
  }

  /// Returns a vertical space equal to the [height] supplied
  static Widget verticalSpace(double height) {
    return Container(height: height);
  }

  /// Returns a vertical space with height set to [_HorizontalSpaceSmall]
  static Widget horizontalSpaceSmall() {
    return horizontalSpace(_HorizontalSpaceSmall);
  }

  /// Returns a vertical space with height set to [_HorizontalSpaceMedium]
  static Widget horizontalSpaceMedium() {
    return horizontalSpace(_HorizontalSpaceMedium);
  }

  /// Returns a vertical space with height set to [HorizontalSpaceLarge]
  static Widget horizontalSpaceLarge() {
    return horizontalSpace(HorizontalSpaceLarge);
  }

  /// Returns a vertical space equal to the [width] supplied
  static Widget horizontalSpace(double width) {
    return Container(width: width);
  }

  // Functions
  // static int getReportOverviewListItemCount(ReportOverviewController viewModel,
  //     EnumEquipmentCheckType equipmentCheckType) {
  //   return equipmentCheckType == EnumEquipmentCheckType.Visual
  //       ? viewModel.visualChecksToBeReportedLength
  //       : equipmentCheckType == EnumEquipmentCheckType.Operational
  //       ? viewModel.operationalChecksToBeReportedLength
  //       : throw Exception('List type provided not implemented');
  // }
  //
  // static bool getVisibilityCards(
  //     ReportOverviewController viewModel, int index) {
  //   return viewModel.expandedButtonClicked == false && index < 2
  //       ? true
  //       : false || viewModel.expandedButtonClicked == true
  //       ? true
  //       : false;
  // }

  static String timeFormatToLocal(String dateTime) {
    return DateFormat(
      'dd-MMM-yy hh:mm aaa',
    ).format(
      DateTime.parse(dateTime).toLocal(),
    );
  }

  static String timeFormatOnlyDateToLocal(String dateTime) {
    return DateFormat(
      'dd-MMM-yy',
    ).format(
      DateTime.parse(dateTime).toLocal(),
    );
  }
}
