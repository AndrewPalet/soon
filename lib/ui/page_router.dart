import 'package:countdown_app/core/contracts/general/I_navigation.dart';
import 'package:countdown_app/core/contracts/general/i_connectivity.dart';
import 'package:countdown_app/core/contracts/general/custom_dialogue.dart';
import 'package:countdown_app/core/controllers/home_controller.dart';
import 'package:countdown_app/ui/views/homeView/home_view.dart';

import 'package:get/get.dart';

class PageRouter {
  static final Bindings initialBinding = BindingsBuilder(() {
    // Get.lazyPut<ApiAuthProvider>(() => ApiAuthProviderService(), fenix: true);
    // Get.put<AADAuth>(AADAuthService(), permanent: true);
    // Get.lazyPut<IConnectivity>(() => ConnectivityService(), fenix: true);
    // Get.lazyPut<CustomDialog>(() => CustomDialogService(), fenix: true);
    // Get.lazyPut<ScanController>(() => ScanController(), fenix: true);
    // Get.lazyPut<CameraViewController>(() => CameraViewController(),
    //     fenix: true);
    // Get.put<INavigation>(NavigationService(), permanent: true);
  });

  static final getPages = [
    GetPage(
      name: HomeView.route,
      page: () => HomeView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => HomeController());
        // Get.put<EquipmentData>(EquipmentDataService());
        // Get.put<EquipmentReportData>(EquipmentReportDataService());
        // Get.put<EntityProcessValidator>(ScanEquipmentCodeProcessValidator(),
        //     tag: ScanEquipmentCodeProcessValidator().runtimeType.toString());
        // Get.put<EntityProcessValidator>(SubmitEquipmentCodeProcessValidator(),
        //     tag: SubmitEquipmentCodeProcessValidator().runtimeType.toString());
      }),
    ),
    // GetPage(
    //   name: CheckOutView.route,
    //   page: () => CheckOutView(),
    //   binding: BindingsBuilder(() {
    //     Get.lazyPut(() => CheckOutController());
    //     Get.put<GraphApiData>(GraphApiDataService());
    //     Get.put<EmployeeData>(EmployeeDataService());
    //     Get.put<UserData>(UserDataService());
    //     Get.put<EquipmentData>(EquipmentDataService());
    //     Get.put<EntityProcessValidator>(TfInputUserIdProcessValidator(),
    //         tag: TfInputUserIdProcessValidator().runtimeType.toString());
    //     Get.put<EntityProcessValidator>(ScanUserIdProcessValidator(),
    //         tag: ScanUserIdProcessValidator().runtimeType.toString());
    //   }),
    // ),
    // GetPage(
    //   name: ReportOverviewView.route,
    //   page: () => ReportOverviewView(),
    //   binding: BindingsBuilder(() {
    //     Get.lazyPut<ReportOverviewController>(() => ReportOverviewController());
    //     Get.put<EquipmentReportData>(EquipmentReportDataService());
    //   }),
    // ),
    // GetPage(
    //   name: EquipmentChecksView.route,
    //   page: () => EquipmentChecksView(),
    //   binding: BindingsBuilder(() {
    //     Get.lazyPut(() => EquipmentChecksController());
    //     Get.put<EquipmentCheckData>(EquipmentCheckDataService());
    //   }),
    //   children: [
    //     GetPage(
    //       name: VisualChecksView.route,
    //       page: () => VisualChecksView(),
    //       binding: BindingsBuilder(() {}),
    //     ),
    //     GetPage(
    //       name: OperationalChecksView.route,
    //       page: () => OperationalChecksView(),
    //       binding: BindingsBuilder(() {}),
    //     ),
    //   ],
    // ),
    // GetPage(
    //   name: ScanView.route,
    //   page: () => ScanView(),
    //   binding: BindingsBuilder(() {}),
    // ),
    // GetPage(
    //   name: CameraView.route,
    //   page: () => CameraView(),
    //   binding: BindingsBuilder(() {
    //     Get.lazyPut(() => CameraViewController());
    //   }),
    // ),
    // GetPage(
    //   name: DisplayPictureView.route,
    //   page: () => DisplayPictureView(),
    //   binding: BindingsBuilder(() {
    //     Get.lazyPut(() => CameraViewController());
    //   }),
    // ),
    // GetPage(
    //   name: CheckEmployeeIsCertifiedView.route,
    //   page: () => CheckEmployeeIsCertifiedView(),
    //   binding: BindingsBuilder(() {
    //     Get.put<EntityProcessValidator>(
    //         TfInputAuthorizedUserIdProcessValidator(),
    //         tag: TfInputAuthorizedUserIdProcessValidator()
    //             .runtimeType
    //             .toString());
    //     Get.put<EntityProcessValidator>(ScanAuthorizedUserIdProcessValidator(),
    //         tag: ScanAuthorizedUserIdProcessValidator().runtimeType.toString());
    //     Get.lazyPut(() => CheckUserIsCertifiedController());
    //   }),
    // ),
  ];
}
