import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:tdd/src/core/network/network_logger.dart';

class ApiService {
  Dio dioInstance() {
    Dio dio = Dio();
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        // Don't trust any certificate just because their root cert is trusted.
        final HttpClient client =
            HttpClient(context: SecurityContext(withTrustedRoots: false));
        // You can test the intermediate / root cert here. We just ignore it.
        client.badCertificateCallback = ((cert, host, port) => true);
        return client;
      },
    );

    String url = 'url/';

    dio.options.baseUrl = "${url}api/v1/";
    dio.options.connectTimeout = const Duration(seconds: 60);
    //  dio.options.receiveTimeout = Duration(seconds: 3);
    dio.interceptors.add(Logging());

    return dio;
  }
}
