import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
	Address? address;
	String? department;
	String? name;
	String? title;

	Company({this.address, this.department, this.name, this.title});

	factory Company.fromJson(Map<String, dynamic> json) {
		return _$CompanyFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
