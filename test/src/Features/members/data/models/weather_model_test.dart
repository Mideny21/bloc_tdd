import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd/src/Features/members/data/models/members_model.dart';
import 'package:tdd/src/Features/members/domain/entities/member_entity.dart';

import '../../../../../helpers/json_reader.dart';

void main() {
  var testMemberModel = MemberModel(
      id: 1,
      name: "John snow",
      position: "Principal Engineer",
      createdAt: "2023-12-19T10:07:17.000000Z",
      updatedAt: "2023-12-19T10:07:17.000000Z");

  var listmemBersModel = [
    MemberModel(
        id: 1,
        name: "name",
        position: "position",
        createdAt: "createdAt",
        updatedAt: "updatedAt"),
    MemberModel(
        id: 1,
        name: "name",
        position: "position",
        createdAt: "createdAt",
        updatedAt: "updatedAt"),
  ];

  test('should be a subclass of weather entity', () async {
    //assert
    expect(testMemberModel, isA<MemberEntity>());
  });

  test('should return a valid model from json', () {
    //arrange
    final Map<String, dynamic> jsonMap =
        json.decode(readJson('helpers/dummy_data/members_response.json'));

    //act
    final result = MemberModel.fromJson(jsonMap);

    //essert
    expect(result, testMemberModel);
  });
}
