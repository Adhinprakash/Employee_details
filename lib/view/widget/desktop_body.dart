import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:machine_task/const/colors.dart';
import 'package:machine_task/controller/provider/get_userlistnotifier.dart';
import 'package:machine_task/view/userdetails.dart';
import 'package:machine_task/view/widget/profile_widget.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  List userList = [];

  @override
  void initState() {
    super.initState();
    Provider.of<Getuserlistprovider>(context, listen: false).fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final usernotifier =
        Provider.of<Getuserlistprovider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.brown[700],
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: const Text(
            "E M P L O Y E E ",
            style: TextStyle(color: Colors.white),
          ),
          toolbarHeight: 13.h,
        ),
        body: Consumer<Getuserlistprovider>(
          builder: (context, value, _) => 
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,                    child: Container(
                        height: double.infinity,
                      width: double.infinity,
                 
                      child:  Stack(
                        children: [
                          ListView.builder(
                          itemCount: value.userModel.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 8.h,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: const Color.fromARGB(255, 245, 245, 245),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                    title: Text(
                                      value.userModel[index].firstName!,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    leading: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            value.userModel[index].image!)),
                                    subtitle: Text(
                                      "${value.userModel[index].username}",
                                      style: const TextStyle(
                                          color: Color.fromARGB(193, 0, 0, 0)),
                                    ),
                                    onTap: () { 
                                     Provider.of<Getuserlistprovider>(context,listen: false).checkfirstpage();

                                      Provider.of<Getuserlistprovider>(context,listen: false).changeIndex(index);

                                     }),
                              ),
                            );
                          },
                    ),
                     Positioned(
                                bottom: 5,
                                right: 5,
                                child: TextButton(
                          onPressed:()async{
                          await  usernotifier.loadNextPage();
                          } , 
                          child: Text('Next>>',style: TextStyle(color: primary),),
                        ),)
                        ],
                      ),
                    
                    ),
                    ),
                     Consumer<Getuserlistprovider>(
                      
                       builder:(context, value, child) =>  Flexible(
                        flex: 2,                    child: Container(
                          height: double.infinity,
                        width: double.infinity,
                        color: Colors.brown[100],
                        child:value.checked==true?
                         ProfileDetails(user: usernotifier.userModel[value.index],): Center(child: Container(child:Lottie.asset("assets/animation/animation_lmvu475b.json",width: 40.w,height: 40.h)))
                                         )),
                     )
                  
                  ],
                ),
              
              ),
           
           
        ),
      ),
    );
  }
}
