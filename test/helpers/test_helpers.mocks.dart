// Mocks generated by Mockito 5.4.2 from annotations
// in tdd/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i10;

import 'package:dartz/dartz.dart' as _i2;
import 'package:dio/dio.dart' as _i13;
import 'package:dio/src/adapter.dart' as _i4;
import 'package:dio/src/cancel_token.dart' as _i14;
import 'package:dio/src/dio_mixin.dart' as _i6;
import 'package:dio/src/options.dart' as _i3;
import 'package:dio/src/response.dart' as _i7;
import 'package:dio/src/transformer.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:tdd/src/core/errors/failure.dart' as _i11;
import 'package:tdd/src/Features/members/data/data_source/customer_remote_source.dart'
    as _i15;
import 'package:tdd/src/Features/members/data/models/customer_model.dart'
    as _i8;
import 'package:tdd/src/Features/members/domain/entities/customer_entity.dart'
    as _i12;
import 'package:tdd/src/Features/members/domain/repository/customer_repository.dart'
    as _i9;
import 'package:tdd/src/Features/members/domain/usecases/get_member.dart'
    as _i16;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBaseOptions_1 extends _i1.SmartFake implements _i3.BaseOptions {
  _FakeBaseOptions_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpClientAdapter_2 extends _i1.SmartFake
    implements _i4.HttpClientAdapter {
  _FakeHttpClientAdapter_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransformer_3 extends _i1.SmartFake implements _i5.Transformer {
  _FakeTransformer_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInterceptors_4 extends _i1.SmartFake implements _i6.Interceptors {
  _FakeInterceptors_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_5<T1> extends _i1.SmartFake implements _i7.Response<T1> {
  _FakeResponse_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMemberModel_6 extends _i1.SmartFake implements _i8.MemberModel {
  _FakeMemberModel_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMemberRepository_7 extends _i1.SmartFake
    implements _i9.MemberRepository {
  _FakeMemberRepository_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MemberRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMemberRepository extends _i1.Mock implements _i9.MemberRepository {
  MockMemberRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<_i2.Either<_i11.Failure, List<_i12.MemberEntity>>>
      getAllMembers() => (super.noSuchMethod(
            Invocation.method(
              #getAllMembers,
              [],
            ),
            returnValue: _i10.Future<
                    _i2.Either<_i11.Failure, List<_i12.MemberEntity>>>.value(
                _FakeEither_0<_i11.Failure, List<_i12.MemberEntity>>(
              this,
              Invocation.method(
                #getAllMembers,
                [],
              ),
            )),
          ) as _i10.Future<_i2.Either<_i11.Failure, List<_i12.MemberEntity>>>);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i12.MemberEntity>> getMember(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMember,
          [id],
        ),
        returnValue:
            _i10.Future<_i2.Either<_i11.Failure, _i12.MemberEntity>>.value(
                _FakeEither_0<_i11.Failure, _i12.MemberEntity>(
          this,
          Invocation.method(
            #getMember,
            [id],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i12.MemberEntity>>);
}

/// A class which mocks [Dio].
///
/// See the documentation for Mockito's code generation for more information.
class MockDio extends _i1.Mock implements _i13.Dio {
  MockDio() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.BaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeBaseOptions_1(
          this,
          Invocation.getter(#options),
        ),
      ) as _i3.BaseOptions);

  @override
  set options(_i3.BaseOptions? _options) => super.noSuchMethod(
        Invocation.setter(
          #options,
          _options,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.HttpClientAdapter get httpClientAdapter => (super.noSuchMethod(
        Invocation.getter(#httpClientAdapter),
        returnValue: _FakeHttpClientAdapter_2(
          this,
          Invocation.getter(#httpClientAdapter),
        ),
      ) as _i4.HttpClientAdapter);

  @override
  set httpClientAdapter(_i4.HttpClientAdapter? _httpClientAdapter) =>
      super.noSuchMethod(
        Invocation.setter(
          #httpClientAdapter,
          _httpClientAdapter,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Transformer get transformer => (super.noSuchMethod(
        Invocation.getter(#transformer),
        returnValue: _FakeTransformer_3(
          this,
          Invocation.getter(#transformer),
        ),
      ) as _i5.Transformer);

  @override
  set transformer(_i5.Transformer? _transformer) => super.noSuchMethod(
        Invocation.setter(
          #transformer,
          _transformer,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Interceptors get interceptors => (super.noSuchMethod(
        Invocation.getter(#interceptors),
        returnValue: _FakeInterceptors_4(
          this,
          Invocation.getter(#interceptors),
        ),
      ) as _i6.Interceptors);

  @override
  void close({bool? force = false}) => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
          {#force: force},
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i10.Future<_i7.Response<T>> head<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #head,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> headUri<T>(
    Uri? uri, {
    Object? data,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #headUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #headUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> get<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
    _i3.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #get,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> getUri<T>(
    Uri? uri, {
    Object? data,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
    _i3.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #getUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> post<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
    _i3.ProgressCallback? onSendProgress,
    _i3.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #post,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> postUri<T>(
    Uri? uri, {
    Object? data,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
    _i3.ProgressCallback? onSendProgress,
    _i3.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #postUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> put<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
    _i3.ProgressCallback? onSendProgress,
    _i3.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #put,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> putUri<T>(
    Uri? uri, {
    Object? data,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
    _i3.ProgressCallback? onSendProgress,
    _i3.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #putUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> patch<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
    _i3.ProgressCallback? onSendProgress,
    _i3.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #patch,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> patchUri<T>(
    Uri? uri, {
    Object? data,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
    _i3.ProgressCallback? onSendProgress,
    _i3.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patchUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #patchUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> delete<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #delete,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> deleteUri<T>(
    Uri? uri, {
    Object? data,
    _i3.Options? options,
    _i14.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #deleteUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<dynamic>> download(
    String? urlPath,
    dynamic savePath, {
    _i3.ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    _i14.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i3.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #download,
          [
            urlPath,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i10.Future<_i7.Response<dynamic>>.value(_FakeResponse_5<dynamic>(
          this,
          Invocation.method(
            #download,
            [
              urlPath,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<dynamic>>);

  @override
  _i10.Future<_i7.Response<dynamic>> downloadUri(
    Uri? uri,
    dynamic savePath, {
    _i3.ProgressCallback? onReceiveProgress,
    _i14.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i3.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #downloadUri,
          [
            uri,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i10.Future<_i7.Response<dynamic>>.value(_FakeResponse_5<dynamic>(
          this,
          Invocation.method(
            #downloadUri,
            [
              uri,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<dynamic>>);

  @override
  _i10.Future<_i7.Response<T>> request<T>(
    String? url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i14.CancelToken? cancelToken,
    _i3.Options? options,
    _i3.ProgressCallback? onSendProgress,
    _i3.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #request,
          [url],
          {
            #data: data,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #request,
            [url],
            {
              #data: data,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> requestUri<T>(
    Uri? uri, {
    Object? data,
    _i14.CancelToken? cancelToken,
    _i3.Options? options,
    _i3.ProgressCallback? onSendProgress,
    _i3.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestUri,
          [uri],
          {
            #data: data,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #requestUri,
            [uri],
            {
              #data: data,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);

  @override
  _i10.Future<_i7.Response<T>> fetch<T>(_i3.RequestOptions? requestOptions) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [requestOptions],
        ),
        returnValue: _i10.Future<_i7.Response<T>>.value(_FakeResponse_5<T>(
          this,
          Invocation.method(
            #fetch,
            [requestOptions],
          ),
        )),
      ) as _i10.Future<_i7.Response<T>>);
}

/// A class which mocks [MemberRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMemberRemoteDataSource extends _i1.Mock
    implements _i15.MemberRemoteDataSource {
  MockMemberRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<_i8.MemberModel> getSingleMember(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getSingleMember,
          [id],
        ),
        returnValue: _i10.Future<_i8.MemberModel>.value(_FakeMemberModel_6(
          this,
          Invocation.method(
            #getSingleMember,
            [id],
          ),
        )),
      ) as _i10.Future<_i8.MemberModel>);
}

/// A class which mocks [GetMemberUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetMemberUseCase extends _i1.Mock implements _i16.GetMemberUseCase {
  MockGetMemberUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.MemberRepository get memberRepository => (super.noSuchMethod(
        Invocation.getter(#memberRepository),
        returnValue: _FakeMemberRepository_7(
          this,
          Invocation.getter(#memberRepository),
        ),
      ) as _i9.MemberRepository);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i12.MemberEntity>> execute(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [id],
        ),
        returnValue:
            _i10.Future<_i2.Either<_i11.Failure, _i12.MemberEntity>>.value(
                _FakeEither_0<_i11.Failure, _i12.MemberEntity>(
          this,
          Invocation.method(
            #execute,
            [id],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i12.MemberEntity>>);
}
