// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cats_asw_api_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KittyImage _$KittyImageFromJson(Map<String, dynamic> json) => _KittyImage(
      json['file'] as String,
    );

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _CatsAwsApiClient implements CatsAwsApiClient {
  _CatsAwsApiClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<_KittyImage> fetchKittyImage() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<_KittyImage>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/meow',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _KittyImage.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
