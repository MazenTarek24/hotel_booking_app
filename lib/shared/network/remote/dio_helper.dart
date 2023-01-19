import 'package:dio/dio.dart';

class DioHelper{

 static Dio? dio;

  static dioInit()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://hotel-production-67e4.up.railway.app/api',
        receiveDataWhenStatusError: true,
      )
    );
  }


 static Future<Response<dynamic>?> postsData({required String url,
   String? token,
   required Map<String, dynamic> data}) async {
   // dio?.options.headers = {
   //   'Authorization': token != null ? 'Bearer$token' : '',
   // };
   return await dio?.post(
     url,
     data: data,
   );
 }


}