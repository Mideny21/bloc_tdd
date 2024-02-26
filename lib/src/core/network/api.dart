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

    String url = 'http://192.168.8.9:8000';

    dio.options.baseUrl = "$url/api/";
    dio.options.connectTimeout = const Duration(seconds: 60);
    dio.options.receiveTimeout = const Duration(seconds: 60);
    dio.interceptors.add(Logging());

    return dio;
  }
}
