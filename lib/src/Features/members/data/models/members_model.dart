import 'package:tdd/src/Features/members/domain/entities/member_entity.dart';

class MemberModel extends MemberEntity {
  MemberModel(
      {required int id,
      required String name,
      required String position,
      required String createdAt,
      required String updatedAt})
      : super(
            id: id,
            name: name,
            position: position,
            createdAt: createdAt,
            updatedAt: updatedAt);

  factory MemberModel.fromJson(Map<String, dynamic> json) => MemberModel(
      id: json['id'],
      name: json['name'],
      position: json['position'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at']);
}
