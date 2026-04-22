import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start RajaOngkir Group Code

class RajaOngkirGroup {
  static String getBaseUrl() => 'https://rajaongkir.komerce.id/api/v1/';
  static Map<String, String> headers = {
    'key': 'X1818v6Fb40b638da330a26de0lOpfUf',
  };
  static GetCitiesCall getCitiesCall = GetCitiesCall();
  static CalculateOngkirCall calculateOngkirCall = CalculateOngkirCall();
}

class GetCitiesCall {
  Future<ApiCallResponse> call({
    String? provinceId = '',
  }) async {
    final baseUrl = RajaOngkirGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetCities',
      apiUrl: '${baseUrl}destination/city/${provinceId}',
      callType: ApiCallType.GET,
      headers: {
        'key': 'X1818v6Fb40b638da330a26de0lOpfUf',
      },
      params: {
        'province_id': provinceId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CalculateOngkirCall {
  Future<ApiCallResponse> call({
    String? origin = '577',
    String? destination = '',
    double? weight,
    String? courier = '',
  }) async {
    final baseUrl = RajaOngkirGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'CalculateOngkir',
      apiUrl: '${baseUrl}/calculate/domestic-cost',
      callType: ApiCallType.POST,
      headers: {
        'key': 'X1818v6Fb40b638da330a26de0lOpfUf',
      },
      params: {
        'origin': origin,
        'destination': destination,
        'weight': weight,
        'courier': courier,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RajaOngkir Group Code

class MidtransTransactionCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
    int? amount,
  }) async {
    final ffApiRequestBody = '''
{
  "transaction_details": {
    "order_id": "[order_id]",
    "gross_amount": 1000
  },
  "credit_card": {
    "secure": true
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MidtransTransaction',
      apiUrl: 'https://app.sandbox.midtrans.com/snap/v1/transactions',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization':
            'Basic TWlkLXNlcnZlci1DR3BMT012T09Na3VzeW9xcWpWYmxKdUE6',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? paymenturl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.redirect_url''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
