import 'package:flutter/material.dart';
import 'package:todo_app/app_colors.dart';
import 'package:todo_app/model/task.dart';

class CustomSnackBar {
  final BuildContext scaffoldCtx;
  final String title;
  final String message;
  //final String imagePath;
  final Icon icon;
  final VoidCallback onPressed;
  final Task deletedTask; // Add this to store the deleted task

  CustomSnackBar({
    required this.scaffoldCtx,
    required this.title,
    required this.message,
    //required this.imagePath,
    required this.icon,
    required this.onPressed,
    required this.deletedTask,
  });

  void showSnackBar() {
    ScaffoldMessenger.of(scaffoldCtx).showSnackBar(SnackBar(
      elevation: 0,
      content: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 1,
        child: Container(
          color: AppColors.hintTextColor,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              const SizedBox(width: 5, height: 0),
              icon,
              //Image.asset(imagePath, height: 40, width: 40),
              const SizedBox(width: 10, height: 0),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(scaffoldCtx).textTheme.labelLarge!.copyWith(
                        color: Theme.of(scaffoldCtx).colorScheme.primary,
                      ),
                    ),
                    Text(
                      message,
                      style: Theme.of(scaffoldCtx).textTheme.labelSmall!.copyWith(
                        color: Theme.of(scaffoldCtx).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey,
                height: 35,
                width: 1,
                margin: const EdgeInsets.symmetric(horizontal: 5),
              ),
              SnackBarAction(
                label: "UNDO",
                textColor: Colors.black,
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      duration: const Duration(seconds: 3),
    ));
  }
}