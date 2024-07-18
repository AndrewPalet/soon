// import 'package:equipment_checkout_tracker/core/contracts/general/I_navigation.dart';
// import 'package:equipment_checkout_tracker/core/contracts/general/custom_dialog.dart';
// import 'package:equipment_checkout_tracker/core/contracts/templateMethod/entity_process_validator.dart';
// import 'package:equipment_checkout_tracker/core/controllers/base_controller.dart';
// import 'package:equipment_checkout_tracker/core/models/snackbar_report.dart';
// import 'package:equipment_checkout_tracker/core/services/templateMethod/scan_equipment_code_process_validator.dart';
// import 'package:equipment_checkout_tracker/core/services/templateMethod/submit_equipment_code_process_validator.dart';
// import 'package:equipment_checkout_tracker/globals/constants.dart';
import 'package:countdown_app/core/contracts/general/I_navigation.dart';
import 'package:countdown_app/core/contracts/general/custom_dialogue.dart';
import 'package:countdown_app/core/controllers/base_controller.dart';
import 'package:countdown_app/core/models/snackbar_report.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:countdown_app/global/constants.dart';

class HomeController extends GetxController with BaseController {
  // Fields
  // SnackbarReport _snackbarReport;
  // GlobalKey<FormState> _formKey;
  // TextEditingController _equipmentBarcodeTextEditingController;
  // FocusNode _equipmentBarcodeFocus;
  late Rx<PackageInfo> _packageInfo;
  // CustomDialog _customDialog;
  // INavigation _navigationService;
  // EntityProcessValidator _scanEquipmentCodeProcessValidator;
  // EntityProcessValidator _submitEquipmentCodeProcessValidator;

  // Init
  HomeController() {
    // _formKey = GlobalKey<FormState>(debugLabel: "Label");
    // _equipmentBarcodeTextEditingController = TextEditingController();
    // _equipmentBarcodeFocus = FocusNode();
    _packageInfo = PackageInfo(appName: '', packageName: '', version: '', buildNumber: '').obs;
    // _customDialog = Get.find();
    // _navigationService = Get.find();
    // _scanEquipmentCodeProcessValidator = Get.find(
    //     tag: ScanEquipmentCodeProcessValidator().runtimeType.toString());
    // _submitEquipmentCodeProcessValidator = Get.find(
    //     tag: SubmitEquipmentCodeProcessValidator().runtimeType.toString());
  }

  @override
  void onClose() {
    // _equipmentBarcodeTextEditingController.dispose();
    // _equipmentBarcodeFocus.dispose();
    super.onClose();
  }

  @override
  onInit() async {
    super.onInit();

    setIsBusy(true);
    _packageInfo.value = await PackageInfo.fromPlatform();

    // This field takes a value from Get.args when a user reports something
    // and we return back to home view
    // _snackbarReport =
    //     await _navigationService.getArgs() as SnackbarReport ?? null;
    //
    // if (_snackbarReport != null) {
    //   _customDialog.snackbar(
    //       bgColor: _snackbarReport.snackColor,
    //       title: _snackbarReport.snackText);
    // }

    setIsBusy(false);
  }

  // Getters
  // GlobalKey<FormState> get formKey => _formKey;

  // TextEditingController get equipmentBarcodeTextEditingController =>
  //     _equipmentBarcodeTextEditingController;
  //
  // FocusNode get equipmentBarcodeFocus => _equipmentBarcodeFocus;

  String get appVersion =>
      '${_packageInfo.value.version}(${_packageInfo.value.buildNumber})';

  // void onEquipmentCodeScan() async {
  //   if (isBusy) {
  //     return;
  //   }
  //
  //   try {
  //     isBusy = true;
  //     await _scanEquipmentCodeProcessValidator.validateEntityAndProceed();
  //   } catch (e) {
  //     _customDialog.msg(kUnknownError, kUnknownErrorMsg);
  //   } finally {
  //     _clearTextEditingController();
  //     setIsBusy(false);
  //   }
  // }

  // void onEquipmentCodeSubmit() async {
  //   if (isBusy) {
  //     return;
  //   }
  //
  //   try {
  //     isBusy = true;
  //     await _submitEquipmentCodeProcessValidator.validateEntityAndProceed();
  //   } catch (e) {
  //     _customDialog.msg(kUnknownError, kUnknownErrorMsg);
  //   } finally {
  //     _clearTextEditingController();
  //     setIsBusy(false);
  //   }
  // }

  void _clearTextEditingController() {
    // _equipmentBarcodeTextEditingController.text = "";
    // _formKey?.currentState?.reset();
  }
}
