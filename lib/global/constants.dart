import 'package:soon/.env';

// Static strings
const kAppName = 'PIT Checkout Tracker';

// const List<String> kAvailabilityOptions = [
//   kFilterAll,
//   kAvailabilityAvailable,
//   kAvailabilityNotAvailable
// ];

// Env vars
// final String kBaseApiUri = environment['BASE_API_URI'];
// final String kTenantId = environment['TENANT_ID'];
// final String kClientId = environment['CLIENT_ID'];
// final String kApiScope = environment['API_SCOPE'];
// final String kClientSecret = environment['CLIENT_SECRET'];
// final String kAppcenterAndroidSecret = environment['APPCENTER_ANDROID_SECRET'];
// final String kAppcenterIosSecret = environment['APPCENTER_IOS_SECRET'];

// SharedPreferences
final kApiAuthToken = 'apiAuthToken';
final kGraphApiAuthToken = 'graphApiAuthToken';
final kAADAuthToken = 'aADAuthToken';
const String kReportedByUserId = 'reportedByUserId';
const String kEquipmentId = 'equipmentId';
const String kUserRoles = 'userRoles';
const String kDcCode = 'dcCode';
const String kLoggedInUser = 'loggedInUser';
const String kTrainerId = 'trainerId';
const String kTrainerUser = 'trainerUser';

// REST Api
const String api = '/api';
const String version = 'v1';
const String graph_version = 'v1.0';
const String api_version = '$api/$version';
const String graph_api_version = '$api/$graph_version';

const String kEquipmentApi = '$api_version/Equipment';
const String kEmployeeApi = '$api_version/Employees';
const String kEquipmentCheckApi = '$api_version/EquipmentChecks';
const String kEquipmentReportApi = '$api_version/EquipmentReports';
const String kEquipmentIssueApi = '$api_version/EquipmentIssues';
const String kFacilityAdminAPi = '$api_version/FacilityAdmins';
const String kUserApi = '$api_version/Users';

// Graph Api
const String kGetGraphUserByEmployeeId =
    '/users?\$count=true&\$search="employeeId:{employeeId}"&ConsistencyLevel=eventual&\$format=application/json;odata.metadata=none';

const String kGetGraphEmployeeManagerByEmployeeId =
    '/users/{employeeId}/manager';

// Asset paths
const kPitLogo = 'lib/assets/images/pit_logo.png';

// Keys
final String kEquipmentBarcodeTextFormFieldWidgetIconKey =
    'EquipmentBarcodeTextFormFieldWidgetIconKey';
