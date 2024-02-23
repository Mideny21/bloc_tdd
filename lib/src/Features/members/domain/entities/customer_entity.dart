// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CustomerEntity extends Equatable {
  int? id;
  String? username;
  String? email;
  String? first_name;
  String? last_name;
  String? address;
  String? phone_number;
  String? created_at;
  String? updated_at;
  CustomerEntity(
      {this.id,
      this.username,
      this.email,
      this.first_name,
      this.last_name,
      this.address,
      this.phone_number,
      this.created_at,
      this.updated_at});

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        username,
        email,
        first_name,
        last_name,
        address,
        phone_number,
        created_at,
        updated_at
      ];
}
