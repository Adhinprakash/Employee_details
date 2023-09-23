import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.mobilelayout, required this.desktoplayout});
final Widget mobilelayout;
final Widget desktoplayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth<600){
        return mobilelayout;
      }else{
        return desktoplayout;
      }

    },) ;
  }
}