// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CustomerEntity extends Equatable {
  int? id;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? address;
  String? phone_number;
  String? created_at;
  String? updated_at;
  CustomerEntity(
      {this.id,
      this.username,
      this.email,
      this.firstName,
      this.lastName,
      this.address,
      this.phone_number,
      this.created_at,
      this.updated_at});

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
