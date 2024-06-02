import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ErrorSnackBar {
  static void showMessage(context, {required String message}) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        message: message,
        backgroundColor: AppColors.red,
      ),
    );
  }
}
