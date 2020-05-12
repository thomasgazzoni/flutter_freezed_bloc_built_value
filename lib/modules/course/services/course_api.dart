import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CourseApi {
  Future<http.Response> fetchCourseList() {
    if (kDebugMode) {
      return Future.delayed(Duration(seconds: 2)).then(
        (value) => http.Response.bytes(utf8.encode('''[
  {
    "id": 1,
    "name": "How Ripple Works",
    "cover": "https://via.placeholder.com/400x250/56acb2",
    "fee_currency": [
      {
        "currency": "XRP",
        "sale_price": "12.57000000"
      }
    ],
    "fee_type": 11,
    "created_at": 1587714193,
    "updated_at": 1589275163
  },
  {
    "id": 2,
    "name": "How Bitcoin Works",
    "cover": "https://via.placeholder.com/400x250/24f355",
    "fee_currency": [
      {
        "currency": "BTC",
        "sale_price": "0.000032000"
      }
    ],
    "fee_type": 11,
    "created_at": 1587714193,
    "updated_at": 1589275163
  }
]'''), 200),
      );
    }

    return http.get('https://course.project.com/list');
  }
}
