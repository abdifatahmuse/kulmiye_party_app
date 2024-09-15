// import 'package:kulmiye/App/middleware.dart';
// import 'package:kulmiye/Modules/Account/Modules/customer_info.dart';
// import 'package:kulmiye/Modules/Account/Modules/customers_list.dart';
// import 'package:kulmiye/Modules/Account/Modules/document_upload.dart';
// import 'package:kulmiye/Modules/Account/account_registeration.dart';
// import 'package:kulmiye/Modules/Auth/login_screen.dart';
// import 'package:kulmiye/Modules/Dashboard/dashboard_screen.dart';
// import 'package:kulmiye/Modules/SimCards/simcard.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: "mainNavigationRoot",
);

// We Use name route
// All our Routes will be available here
final Map<String, WidgetBuilder> routes = {
  // AppRoutes.login: (BuildContext context) =>
  //     const BlocMiddleware(child: LoginScreen()),
  // // AppRoutes.otp: (BuildContext context) => BlocMiddleware(child: OtpScreen()),
  // AppRoutes.dashboard: (BuildContext context) =>
  //     const BlocMiddleware(child: DashboardScreen()),
  // AppRoutes.addDBIRegisterAccount: (BuildContext context) =>
  //     const BlocMiddleware(child: AccountRegistration()),
  // AppRoutes.customerInformationAccount: (BuildContext context) =>
  //     const BlocMiddleware(child: CustomerInfoScreen()),

  // AppRoutes.customerList: (BuildContext context) =>
  //     const BlocMiddleware(child: CustomersList()),
  // AppRoutes.uploadCustomerDocs: (BuildContext context) =>
  //     const BlocMiddleware(child: UploadDocuments()),
  // AppRoutes.registerSimCard: (BuildContext context) =>
  //     const BlocMiddleware(child: SimCardRegistration()),
};

class AppRoutes {
  // static String login = '/';
  // static String otp = '/otp';
  // static String dashboard = '/dashboard';
  // static String addDBIRegisterAccount = '/dbi_register_account';
  // static String registerSimCard = '/register_simCard';
  // static String customerInformationAccount = '/customer_information_account';
  // static String uploadCustomerDocs = '/customer_upload_documents';
  // static String customerList = '/customer_list';
  // static String createPassPin = '/create_pass_pin';
  // static String passPin = '/pass_pin';
  // static String resetPassPin = '/reset_pass_pin';
}
