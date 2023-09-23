import 'package:flutter/material.dart';
import 'package:machine_task/controller/provider/get_userlistnotifier.dart';
import 'package:machine_task/view/widget/desktop_body.dart';
import 'package:machine_task/view/widget/mobile_body.dart';
import 'package:machine_task/view/widget/responsive_layout.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
    
    
     MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => Getuserlistprovider(), )
      ],
       child: Sizer(
         builder: (context, orientation, deviceType) {
              return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
             
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home:  const ResponsiveLayout(mobilelayout: MobileBody(), desktoplayout:DesktopBody() )
             );
         }, 
        
         
       ),
     );
  }
}

