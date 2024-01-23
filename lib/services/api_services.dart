import 'package:dio/dio.dart';

Future fetchUrlAnalysis(String urlEntered) async {
  const apiKey = 'io7tBvUWf2BNCaMLe0g2dgloT7WstMOq';
  const url = 'https://google.com';
  const apiUrl =
      // 'https://www.ipqualityscore.com/api/json/url/$apiKey/$urlEntered';
      "https://www.ipqualityscore.com/api/json/url/io7tBvUWf2BNCaMLe0g2dgloT7WstMOq/https%3A%2F%2Fgoogle.com";

  try {
    final dio = Dio();
    final response = await dio.get(apiUrl);

    if (response.statusCode == 200) {
      // Parse and use the response data as needed
      print('Response: ${response.data}');
      return response.data;
    } else {
      print('Failed to fetch data: ${response.statusCode}');
      return "error";
    }
  } catch (e) {
    print('Error: $e');
    return "error";
  }
}
