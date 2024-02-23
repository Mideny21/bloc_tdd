import 'package:tdd/src/Features/members/domain/entities/customer_entity.dart';

class CustomerModel extends CustomerEntity {
  int? id;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? address;
  String? phoneNumber;
  String? createdAt;
  String? updatedAt;

  CustomerModel(
      {this.id,
      this.username,
      this.email,
      this.firstName,
      this.lastName,
      this.address,
      this.phoneNumber,
      this.createdAt,
      this.updatedAt});

  CustomerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    address = json['address'];
    phoneNumber = json['phone_number'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
