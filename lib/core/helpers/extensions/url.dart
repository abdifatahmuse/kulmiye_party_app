import 'package:dio/dio.dart';
// import 'package:firebase_performance/firebase_performance.dart';

typedef RequestContentLengthMethod = int? Function(RequestOptions options);
int? defaultRequestContentLength(RequestOptions options) {
  try {
    if (options.data is String || options.data is Map) {
      return options.headers.toString().length +
          (options.data?.toString().length ?? 0);
    }
  } catch (_) {
    return null;
  }
  return null;
}

typedef ResponseContentLengthMethod = int? Function(Response options);

int? defaultResponseContentLength(Response response) {
  if (response.data is String) {
    return (response.headers.toString().length) + response.data.length as int?;
  } else {
    return null;
  }
}

// extension ResponseHttpMetric on HttpMetric {
//   void setResponse(Response? value,
//       ResponseContentLengthMethod responseContentLengthMethod) {
//     if (value == null) {
//       return;
//     }
//     final responseContentLength = responseContentLengthMethod(value);
//     if (responseContentLength != null) {
//       responsePayloadSize = responseContentLength;
//     }
//     final contentType = value.headers.value.call(Headers.contentTypeHeader);
//     if (contentType != null) {
//       responseContentType = contentType;
//     }
//     if (value.statusCode != null) {
//       httpResponseCode = value.statusCode;
//     }
//   }
// }

extension UriHttpMethod on Uri {
  String normalized() {
    return "$scheme://$host$path";
  }
}
