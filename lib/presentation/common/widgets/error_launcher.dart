import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ErrorLauncher extends StatelessWidget {
  final String? error;
  final VoidCallback? onPositivebtnPressed;
  const ErrorLauncher(
      {Key? key, required this.error, this.onPositivebtnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (error != null) {
      WidgetsBinding.instance.addPostFrameCallback(
          (_) => Fluttertoast.showToast(msg: error ?? "Somthing went wrong"));
    }
    return const SizedBox.shrink();
  }
}
