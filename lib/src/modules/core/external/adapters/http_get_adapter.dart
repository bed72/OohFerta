import 'package:dio/dio.dart';

import 'package:either_dart/either.dart';

import 'package:oohferta/src/modules/core/domain/alias/http_alias.dart';

abstract class HttpGetAdapter {
  HttpType call({
    required String url,
    Map<String, String>? headers,
  });
}

class HttpGetAdapterImpl implements HttpGetAdapter {
  late final Dio _http;

  HttpGetAdapterImpl({required http}) : _http = http;

  @override
  HttpType call({
    required String url,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _http.get(url);

      return Right(response.data as Map<String, dynamic>);
    } on DioException catch (failure) {
      return Left(failure.message ?? 'Ops, deu ruim');
    } finally {
      _http.close();
    }
  }
}
