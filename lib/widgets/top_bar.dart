import 'package:flutter/material.dart';
import 'package:flutter_app/globals/app_colors.dart';

AppBar topBar({required String title}){
  return AppBar(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(40),
      )
    ),
    centerTitle: true,
    title: Text(title),
    backgroundColor: AppColors.colorPrimary,
  );
}