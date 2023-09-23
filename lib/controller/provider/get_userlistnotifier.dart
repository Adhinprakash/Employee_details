import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:machine_task/model/user_model/user_model.dart';

class Getuserlistprovider extends ChangeNotifier {
    List<UserModel>userModel=[];

  int limit = 10;
  int skip = 0;
  bool isLoading = false;

  
  Future<List<UserModel>> fetchData() async {
    isLoading = true;

    try {
      final response = await http.get(
          Uri.parse('https://dummyjson.com/users?limit=$limit&skip=$skip'));

      if (response.statusCode == 200) {
        Map<String, dynamic> datas = jsonDecode(response.body);
        List<dynamic>body=datas['users'];
        userModel=[...userModel,...body.map((dynamic items) => UserModel.fromJson(items)).toList()];
        notifyListeners();
        return userModel;
        
        
      } else {
        throw Exception('Failed to load data');
      }
    }  finally {
      isLoading = false;
    }
  }




  loadNextPage()async {
    if (limit != 100) {
      limit = limit + 10;
      skip = skip + 10;
    } else {
      const ScaffoldMessenger(
          child: SnackBar(content: Text("Data reached limit")));
    }

    // Increment the page
   await fetchData(); // Load the next page
  }



// get single userdetails

Future<void>useDetails()async{
  try{
  final response=await http.get(Uri.parse("https://dummyjson.com/users"));
if(response.statusCode==200){
print(response.body);
notifyListeners();
}

  }catch(e){
    return print(e);
  }
}



}
