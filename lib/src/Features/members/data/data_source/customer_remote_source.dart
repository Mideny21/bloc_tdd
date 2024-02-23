// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:tdd/src/Features/members/data/models/customer_model.dart';
import 'package:tdd/src/core/constant/constants.dart';
import 'package:tdd/src/core/errors/exceptions.dart';
import 'package:tdd/src/core/network/api.dart';

abstract class CustomerRemoteDataSource {
  Future<List<CustomerModel>> getAllCustomer();
}

class CustomerRemoteDataSourceImpl extends CustomerRemoteDataSource {
  final ApiService api;
  CustomerRemoteDataSourceImpl({required this.api});
  @override
  Future<List<CustomerModel>> getAllCustomer() async {
    final response = await api.dioInstance().get(Urls.allCustomer);

    if (response.statusCode == 200) {
      List customer = response.data;

      return customer.map((e) => CustomerModel.fromJson(e)).toList();
    } else {
      throw ServerException(message: 'Something Went Wrong', statusCode: 404);
    }
  }
}
