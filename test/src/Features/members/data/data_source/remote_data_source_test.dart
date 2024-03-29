import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/src/Features/members/data/data_source/customer_remote_source.dart';
import 'package:tdd/src/Features/members/data/models/customer_model.dart';
import 'package:tdd/src/core/constant/constants.dart';
import 'package:tdd/src/core/errors/exceptions.dart';

import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockDio mockDio;
  late MemberRemoteDataSourceImpl memberRemoteDataSourceImpl;

  setUp(() {
    mockDio = MockDio();
    memberRemoteDataSourceImpl = MemberRemoteDataSourceImpl(dio: mockDio);
  });

  int memberId = 1;

//stubing means returning a fake object when the mock method is called
  group('get single members', () {
    test('should return members model when response code is 200', () async {
      //arrange
      when(mockDio.get(Urls.getMemberById(memberId))).thenAnswer((_) async =>
          dioResponse(
              data: readJson('helpers/dummy_data/members_response.json'),
              statusCode: 200));

      //act
      final result = await memberRemoteDataSourceImpl.getSingleMember(memberId);

      //assert
      expect(result, isA<MemberModel>());
    });

    // test(
    //     'should throw a server exception when the response code is 404 or other',
    //     () async {
    //   //arrange
    //   when(mockDio.get(Urls.getMemberById(memberId))).thenAnswer((_) async =>
    //       dioResponse(data: 'Something Went Wrong', statusCode: 404));

    //   //act
    //   final result = await memberRemoteDataSourceImpl.getSingleMember(memberId);

    //   //assert
    //   expect(result, throwsA(isA<ServerException>()));
    // });
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
