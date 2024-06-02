// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:flutter/material.dart';

// class RouteConfiguration {
//   final GoRouter router = GoRouter(
//     routes: <RouteBase>[
//       GoRoute(
//         // ------------------------------------------------ главная страница
//         path: RouteConstants.main,
//         builder: (BuildContext context, GoRouterState state) {
//           return const MainPage();
//         },
//         routes: <RouteBase>[
//           // ------------------------------------------ страница авторизации
//           GoRoute(
//             path: RouteConstants.authorization,
//             builder: (BuildContext context, GoRouterState state) {
//               return const AuthorizationPage();
//             },
//           ),
//           // ----------------------------------- пользовательское соглашение
//           GoRoute(
//             path: RouteConstants.agreement,
//             builder: (BuildContext context, GoRouterState state) {
//               return const AgreementPage();
//             },
//           ),
//           // --------------------------------------------- код подтверждения
//           GoRoute(
//             path: RouteConstants.confirmation,
//             builder: (BuildContext context, GoRouterState state) {
//               return const ConfirmationPage(phone: "");
//             },
//           ),
//           // ------------------------------------------------ выбор договора
//           GoRoute(
//             path: RouteConstants.contractSelection,
//             builder: (BuildContext context, GoRouterState state) {
//               return const ContractSelectionPage(phone: "");
//             },
//           ),
//           // --------------------------------------------------- тип клиента
//           GoRoute(
//             path: RouteConstants.clientType,
//             builder: (BuildContext context, GoRouterState state) {
//               return const ClientTypePage();
//             },
//           ),
//           // --------------------------------------------------- ФИО клиента
//           GoRoute(
//             path: RouteConstants.fio,
//             builder: (BuildContext context, GoRouterState state) {
//               return const FioPage();
//             },
//           ),
//           // ----------------------------------------------------- реквизиты
//           GoRoute(
//             path: RouteConstants.requisites,
//             builder: (BuildContext context, GoRouterState state) {
//               return const RequisitesPage();
//             },
//           ),
//           // ------------------------------------------------ добавить адрес
//           GoRoute(
//             path: RouteConstants.addAddress,
//             builder: (BuildContext context, GoRouterState state) {
//               return const AddAddressPage();
//             },
//           ),
//           // ------------------------------------------- подтверждение почты
//           GoRoute(
//             path: RouteConstants.emailConfirmation,
//             builder: (BuildContext context, GoRouterState state) {
//               return EmailConfirmationPage(email: '', emailsBloc: context.read<EmailsBloc>());
//             },
//           ),
//           // ------------------------------------------------ адрес доставки
//           GoRoute(
//             path: RouteConstants.deliveryAddress,
//             builder: (BuildContext context, GoRouterState state) {
//               return const DeliveryAddressPage();
//             },
//           ),
//           // ------------------------------------------------- прислать чеки
//           GoRoute(
//             path: RouteConstants.sendReceipt,
//             builder: (BuildContext context, GoRouterState state) {
//               return const SendReceiptPage();
//             },
//           ),
//           // --------------------------------------------------
//         ],
//       ),
//     ],
//     //
//     // ---------------------------------------------------------------------
//     // - страница с ошибкой появится например: если ввести не правильный url
//     errorBuilder: (context, state) => const WebErrorPage(),
//   );
// }


// class RouteConstants {
//   //-------------------------------------------------- главное меню
//   static const String main = '/';
//   //--------------------------------------------------- регистрация
//   static const String authorization = 'authorization';
//   static const String agreement = 'agreement';
//   static const String confirmation = 'confirmation';
//   static const String contractSelection = 'contract_selection';
//   static const String clientType = 'client_type';
//   static const String fio = 'fio';
//   static const String requisites = 'requisites';
//   static const String addAddress = 'add_address';
//   static const String emailConfirmation = 'email_confirmation';
//   static const String deliveryAddress = 'delivery_address';
//   static const String sendReceipt = 'send_receipt';
// }

