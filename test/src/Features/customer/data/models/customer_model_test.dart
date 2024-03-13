import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd/src/Features/customer/data/models/customer_model.dart';
import 'package:tdd/src/Features/customer/domain/entities/customer_entity.dart';

import '../../../../../helpers/json_reader.dart';

void main() {
  var testCustomerModel = CustomerModel(
      id: 1,
      username: 'JohnDoe',
      email: 'mwaikasu21@gmail.com',
      firstName: 'Raymond',
      lastName: 'Mwaikasu',
      address: 'Moshi',
      phoneNumber: "0678909090",
      createdAt: '32324-342',
      updatedAt: '4534-590385903');

  test('should be a subclass of customer Entity', () async {
    // assert
    expect(testCustomerModel, isA<CustomerEntity>());
  });

  test('should return a valid Customermodel from json', () {
    expect(
        CustomerModel.fromJson(<String, dynamic>{
          'id': 1,
          'username': 'JohnDoe',
          'email': 'mwaikasu21@gmail.com',
          'first_name': 'Raymond',
          'last_name': 'Mwaikasu',
          'address': 'Moshi',
          'phone_number': "0678909090",
          'created_at': '32324-342',
          'updated_at': '4534-590385903'
        }),
        isA<CustomerModel>()
            .having((s) => s.id, 'id', 1)
            .having((p0) => p0.username, 'username', 'JohnDoe')
            .having((p0) => p0.email, 'email', 'mwaikasu21@gmail.com')
            .having((p0) => p0.firstName, 'firstName', 'Raymond')
            .having((p0) => p0.lastName, 'lastName', 'Mwaikasu')
            .having((p0) => p0.address, 'address', 'Moshi')
            .having((p0) => p0.phoneNumber, 'phoneNumber', '0678909090')
            .having((p0) => p0.createdAt, 'createdAt', '32324-342')
            .having((p0) => p0.updatedAt, 'updatedAt', '4534-590385903'));
  });

  test('should return a valid CustomerModel Fromjson from helpers', () {
    //arrange
    final Map<String, dynamic> jsonMap =
        json.decode(readJson('helpers/dummy_data/customer_response.json'));

    //act
    final result = CustomerModel.fromJson(jsonMap);

    //assert
    expect(result, testCustomerModel);
  });
}
