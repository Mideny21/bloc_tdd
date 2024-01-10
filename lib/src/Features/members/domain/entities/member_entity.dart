// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class MemberEntity extends Equatable {
  int? id;
  String? name;
  String? position;
  String? createdAt;
  String? updatedAt;
  MemberEntity(
      {required this.id,
      required this.name,
      required this.position,
      required this.createdAt,
      required this.updatedAt});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, position, createdAt, updatedAt];
}
