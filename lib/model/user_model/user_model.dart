import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'bank.dart';
import 'company.dart';
import 'hair.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
	int? id;
	String? firstName;
	String? lastName;
	String? maidenName;
	int? age;
	String? gender;
	String? email;
	String? phone;
	String? username;
	String? password;
	String? birthDate;
	String? image;
	String? bloodGroup;
	int? height;
	double? weight;
	String? eyeColor;
	Hair? hair;
	String? domain;
	String? ip;
	Address? address;
	String? macAddress;
	String? university;
	Bank? bank;
	Company? company;
	String? ein;
	String? ssn;
	String? userAgent;

	UserModel({
		this.id, 
		this.firstName, 
		this.lastName, 
		this.maidenName, 
		this.age, 
		this.gender, 
		this.email, 
		this.phone, 
		this.username, 
		this.password, 
		this.birthDate, 
		this.image, 
		this.bloodGroup, 
		this.height, 
		this.weight, 
		this.eyeColor, 
		this.hair, 
		this.domain, 
		this.ip, 
		this.address, 
		this.macAddress, 
		this.university, 
		this.bank, 
		this.company, 
		this.ein, 
		this.ssn, 
		this.userAgent, 
	});

	factory UserModel.fromJson(Map<String, dynamic> json) {
		return _$UserModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
