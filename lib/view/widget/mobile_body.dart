import 'package:flutter/material.dart';
import 'package:machine_task/view/userdetails.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../controller/provider/get_userlistnotifier.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  List userList = [];
    

  @override
  void initState() {
    super.initState();
  Provider.of<Getuserlistprovider>(context,listen: false). fetchData(); 
  }

  @override
  Widget build(BuildContext context) {
    final  usernotifier=  Provider.of<Getuserlistprovider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown[100],
       appBar: AppBar(
        backgroundColor: Colors.brown[700],
leading: const Icon(Icons.menu,color: Colors.white,),
title: const Text("E M P L O Y E E ",style: TextStyle(color: Colors.white),),
        toolbarHeight: 14.h,
       ),
        body:
        
        
         Consumer<Getuserlistprovider>(
          builder:(context, value, _) => 
          
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                
                  itemCount: value.userModel.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 8.h,
                         decoration:  BoxDecoration(borderRadius:const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              ) ,color: const Color.fromARGB(255, 245, 245, 245),boxShadow:  [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                               ],),
                        child: Padding(
                          padding:  EdgeInsets.only(bottom: 6),
                          child: ListTile(
                            
                            title: Text(value.userModel[index].firstName!,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                            leading: CircleAvatar(backgroundImage: NetworkImage(value.userModel[index].image!)),
                            subtitle: Text("${value.userModel[index].username}",style:  const TextStyle(color: Color.fromARGB(193, 0, 0, 0)),),
                            onTap: () =>
                             Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                 Userdeatails(user: usernotifier.userModel[index],)),
                                      )
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child:usernotifier. isLoading
                    ? const CircularProgressIndicator()
                    : Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: TextButton(
                          onPressed:()async{
                          await  usernotifier.loadNextPage();
                          } , 
                          child:const Text('Next'),
                        ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}