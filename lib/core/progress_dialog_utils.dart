import 'package:flutter/material.dart';

class ProgressDialogUtils {
 // static bool isProgressVisible = false;

  ///common method for showing progress dialog


  ///common method for hiding progress dialog
  static void showLoading(BuildContext context, String message, {bool isCanceled = false }) {
    showDialog(
        barrierDismissible: isCanceled,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Row(
              children: [
                const CircularProgressIndicator(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(message),
                )
              ],
            ),
          );
        });
  }

  static void hideLoading(BuildContext context) {
    Navigator.pop(context);
  }
 static void showMessage({
      required BuildContext context,
      required String message,
      required String posActionText,
      required Function posAction,

        String? negActionText,
        Function? negAction,
      }) {
    showDialog(context: context, builder: (context){
      return AlertDialog(
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(message,style: const TextStyle(color: Colors.red),),
        ),
        actions: [
          TextButton(onPressed: (){
            posAction();
          }, child: Text(posActionText,style: const TextStyle(color: Colors.black),)),
        ],
      );
    });
  }
  // static void hideProgressDialog() {
  //   if (isProgressVisible)
  //     Navigator.pop(
  //         NavigatorService.navigatorKey.currentState!.overlay!.context);
  //   isProgressVisible = false;
  // }
  //
  // static void showProgressDialog(
  //     {BuildContext? context, isCancellable = false}) async {
  //   if (!isProgressVisible &&
  //       NavigatorService.navigatorKey.currentState?.overlay?.context != null)
  //   {
  //     showDialog(
  //         barrierDismissible: isCancellable,
  //         context: NavigatorService.navigatorKey.currentState!.overlay!.context,
  //         builder: (BuildContext context) {
  //           return Center(
  //             child: CircularProgressIndicator.adaptive(
  //               strokeWidth: 4,
  //               valueColor: AlwaysStoppedAnimation<Color>(
  //                 Colors.white,
  //               ),
  //             ),
  //           );
  //         });
  //     isProgressVisible = true;
  //   }
  // }
}
