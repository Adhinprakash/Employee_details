import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:machine_task/const/colors.dart';
import 'package:machine_task/const/constrians.dart';
import 'package:machine_task/model/user_model/user_model.dart';
import 'package:machine_task/view/widget/profile_widget.dart';
import 'package:sizer/sizer.dart';

class Userdeatails extends StatelessWidget {
  final UserModel user;
  const Userdeatails({
    super.key,
    required this.user,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          toolbarHeight: 13.h,
          backgroundColor: Colors.brown[700],
          leading:  IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios,color: Colors.white),
          ),
          title: const Text(
            'P R O F I L E',
            style: TextStyle(color: Colors.white),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: ProfileDetails(user: user),
      ),
    );
  }
}

