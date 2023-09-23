
import 'package:flutter/material.dart';
import 'package:machine_task/const/colors.dart';
import 'package:machine_task/const/constrians.dart';
import 'package:machine_task/model/user_model/user_model.dart';
import 'package:sizer/sizer.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox(
              height: 2.h,
            ),
            Container(
                height: 30.h,
                width: 90.w,
                
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[100]),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Column(
                      children: [
                        Container(
                            height: 10.h,
                            width: 22.w,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(255, 238, 190, 172)),
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white),
                            child: Image.network(
                              user.image!,
                              fit: BoxFit.cover,
                            )),
                        Text(
                          '${user.firstName} ' '${user.lastName} ${user.maidenName}',
                          style: TextStyle(
                              color: primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "${user.company!.title}",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.email,
                                  size: 14,
                                ),
                                Text(
                                  "${user.email}",
                                  style:
                                      TextStyle(color: primary, fontSize: 12),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone,
                                  size: 14,
                                ),
                                Text("${user.phone}",
                                    style:
                                        TextStyle(color: primary, fontSize: 12))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 90.w,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(19),
                    color: Colors.grey[100]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     SizedBox(
                      width: 1.h,
                    ),
                    const Text(
                      "Personal details",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text("Age : ${user.age}",
                        style: TextStyle(color: primary, fontSize: 14)),
                    Text("Gender : ${user.gender}",
                        style: TextStyle(color: primary, fontSize: 14)),
                    Text("DOB : ${user.birthDate}",
                        style: TextStyle(color: primary, fontSize: 14)),
                    Text("Blood Group : ${user.bloodGroup}",
                        style: TextStyle(color: primary, fontSize: 14)),
                    Text("Height : ${user.height}",
                        style: TextStyle(color: primary, fontSize: 14)),
                    Text("Weight : ${user.weight}",
                        style: TextStyle(color: primary, fontSize: 14)),
                    Text("Eyecolor : ${user.eyeColor}",
                        style: TextStyle(color: primary, fontSize: 14)),
                  ],
                ),
              ),
            ),
            kheight30,
            Container(
                width: 90.w,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(19),
                  color: Colors.grey[100]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(
                    width: 1.h,
                  ),
                  const Text(
                    "Address",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text("address: ${user.address!.address}",
                      style: TextStyle(color: primary, fontSize: 14)),
                  khieght,
                  Text("city : ${user.address!.city}",
                      style: TextStyle(color: primary, fontSize: 14)),
                  khieght,
                  Text("DOB : ${user.address!.postalCode}",
                      style: TextStyle(color: primary, fontSize: 14)),
                  khieght,
                  Text("Blood Group : ${user.address!.state}",
                      style: TextStyle(color: primary, fontSize: 14)),
                  khieght,
                ],
              ),
            ),
            kheight30,
            Container(
                width: 90.w,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(19),
                  color: Colors.grey[100]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Company details ",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text("company name :${user.company!.name}",
                      style: TextStyle(color: primary, fontSize: 14)),
                  khieght,
                  Text("address : ${user.company!.address!.address}",
                      style: TextStyle(color: primary, fontSize: 14)),
                  khieght,
                  Text("DOB : ${user.company!.department}",
                      style: TextStyle(color: primary, fontSize: 14)),
                  khieght,
                  Text("company department: ${user.company!.title}",
                      style: TextStyle(color: primary, fontSize: 14)),
                  khieght,
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 25.h,
                width: 90.w,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(19),
                    color: Colors.brown.shade900),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("BANK DETAILS",
                                style: TextStyle(color: Colors.white)),
                            Text("${user.firstName} ${user.lastName}",
                                style: const TextStyle(color: Colors.white))
                          ],
                        ),
                        Text(user.bank!.cardNumber!,
                            style: const TextStyle(color: Colors.white)),
                        Row(
                          
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("EXP DATE ",
                                    style: TextStyle(color: Colors.yellow)),
                                Text(user.bank!.cardExpire!,
                                    style: const TextStyle(color: Colors.white))
                              ],
                            ),
                             SizedBox(
                              width: 1.h,
                            ),

                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("CURRENCY", style: TextStyle(color: Colors.yellow)),

                                Text("${user.bank!.currency}" ,  style: const TextStyle(color: Colors.white))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(width: 10,),
                      SizedBox(
                        height: 23.sp,
                        width: 23.sp,
                        child: Image.network("https://imgs.search.brave.com/fEPhKqsnDmiiMB2MZ6DadxtJXluk6E5cn1W-s-pQDFk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9sb2dv/ZG93bmxvYWQub3Jn/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDE0/LzA3L21hc3RlcmNh/cmQtbG9nby03LnBu/Zw"),
                      )
                  ],
                )),
          ],
        ),
      ],
    );
  }
}