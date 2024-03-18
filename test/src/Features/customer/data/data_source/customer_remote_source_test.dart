import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/src/Features/customer/data/data_source/customer_remote_source.dart';
import 'package:tdd/src/Features/customer/data/models/customer_model.dart';
import 'package:tdd/src/core/constant/constants.dart';
import 'package:tdd/src/core/network/api.dart';

import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockApiService mockapiService;
  late MockDio mockDio;
  late CustomerRemoteDataSourceImpl customerRemoteDataSourceImpl;

  setUp(() {
    mockapiService = MockApiService();
    mockDio = MockDio();
    customerRemoteDataSourceImpl =
        CustomerRemoteDataSourceImpl(api: mockapiService);
    // Stubbing the dioInstance() method to return the mock Dio instance
    when(mockapiService.dioInstance()).thenReturn(mockDio);
  });

  group('Testing customer module', () {
    test('should return list of customers when response code is 200', () async {
      //THIS INVOLVES STUBBING => RETURNING A FAKE OBJECT WHEN THE MOCK METHOD IS CALLED

      //arrange
      when(mockDio.get(Urls.allCustomer)).thenAnswer((_) async => dioResponse(
          data: readListJson('helpers/dummy_data/list_customer_response.json'),
          statusCode: 200));

      //act
      final result = await customerRemoteDataSourceImpl.getAllCustomer();

      //assert
      expect(result, isA<List<CustomerModel>>());
    });
  });
}

Response dioResponse({required dynamic data, required int statusCode}) {
  return Response(
      data: data,
      statusCode: statusCode,
      requestOptions: RequestOptions(
        headers: {
          Headers.contentTypeHeader: [Headers.jsonContentType],
          Headers.acceptHeader: [Headers.jsonContentType],
        },
      ));
}

// AN ARTENALTIVE METHOD
// void main() {
//   group('CustomerRemoteDataSourceImpl Tests', () {
//     late CustomerRemoteDataSourceImpl dataSource;
//     late MockApiService mockApiService;

//     setUp(() {
//       mockApiService = MockApiService();
//       dataSource = CustomerRemoteDataSourceImpl(api: mockApiService);
//     });

//     test('getAllCustomer returns list of CustomerModel if HTTP status code is 200', () async {
//       // Arrange
//       final mockResponseData = [
//         {'id': 1, 'name': 'Customer 1'},
//         {'id': 2, 'name': 'Customer 2'}
//       ];

//       // Mocking Dio instance to return a response with status code 200
//       when(mockApiService.dioInstance().get(any)).thenAnswer((_) async => Response(data: mockResponseData, statusCode: 200));

//       // Act
//       final result = await dataSource.getAllCustomer();

//       // Assert
//       expect(result, isA<List<CustomerModel>>());
//       expect(result.length, 2); // Check if correct number of customers are returned
//     });

//     test('getAllCustomer throws ServerException if HTTP status code is not 200', () {
//       // Arrange
//       // Mocking Dio instance to return a response with status code other than 200
//       when(mockApiService.dioInstance().get(any)).thenAnswer((_) async => Response(data: null, statusCode: 404));

//       // Act & Assert
//       expect(() => dataSource.getAllCustomer(), throwsA(TypeMatcher<ServerException>()));
//     });
//   });
// }
