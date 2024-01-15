// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:tdd/src/Features/members/data/models/members_model.dart';
import 'package:tdd/src/core/constant/constants.dart';
import 'package:tdd/src/core/errors/exceptions.dart';

abstract class MemberRemoteDataSource {
  Future<MemberModel> getSingleMember(int id);
}

class MemberRemoteDataSourceImpl extends MemberRemoteDataSource {
  final Dio dio;
  MemberRemoteDataSourceImpl({required this.dio});
  @override
  Future<MemberModel> getSingleMember(int id) async {
    final response = await dio.get(Urls.getMemberById(id));

    if (response.statusCode == 200) {
      return MemberModel.fromJson(json.decode(response.data));
    } else {
      throw ServerException(message: 'Something Went Wrong', statusCode: 404);
    }
  }
}
