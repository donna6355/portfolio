import 'package:get/get.dart';

class UserProvider extends GetConnect {
  // Get request
  Future<Response> getUser(int id) => get('http://youapi/users/$id');
  // Post request
  Future<Response> postUser(Map data) => post('http://youapi/users', data);
  // Post request with File
  Future<Response> postCases(List<int> image) {
    final form = FormData({
      'file': MultipartFile(image, filename: 'avatar.png'),
      'otherFile': MultipartFile(image, filename: 'cover.png'),
    });
    return post('http://youapi/users/upload', form);
  }

  GetSocket userMessages() {
    return socket('https://yourapi/users/socket');
  }
}

class HomeProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://api.covid19api.com';
    // baseUrl = 'https://api.covid19api.com'; // It define baseUrl to
    // Http and websockets if used with no [httpClient] instance

    httpClient.addAuthenticator<dynamic>((request) async {
      final response = await get("http://yourapi/token");
      final token = response.body['token'];
      // Set the header
      request.headers['Authorization'] = "$token";
      return request;
    });

    // Add common request headers
    final languageCode = Get.deviceLocale?.languageCode ?? 'en';
    httpClient.addRequestModifier<dynamic>((request) {
      // request.headers['Content-Type'] = "application/json";
      // request.headers['Access-Control-Allow-Origin'] = "*";
      request.headers['Accept-Language'] = languageCode;
      return request;
    });
  }
}
