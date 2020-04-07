import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://projects.rayqube.com/vatika";

class Service {
  static Future getProduct() {
    var url = baseUrl + "/getcat";
    return http.get(url);
  }
}