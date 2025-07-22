import 'package:dio/dio.dart';
import './config.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
    baseUrl: HttpConfig.baseURL,connectTimeout: Duration(seconds: HttpConfig.timeout)
  );

  //1.创建单独配置
  static final Dio dio = Dio(baseOptions);



  //2.发送网络请求
  static Future request(String url,{String method = 'get',Map<String,dynamic>? params, Interceptor? inter } ) async {

    //  全局拦截器
//  创建默认的全局拦截器

    Interceptor dinter = InterceptorsWrapper(
      onRequest: (options,handler){
        print('请求拦截');
        return handler.next(options);
      },
      onResponse: (options,handler){
        print('相应拦截');
        return handler.next(options);
      },
      onError: (err,handler){
        print('错误拦截');
        return handler.next(err);
      },
    );
    List<Interceptor> inters = [dinter];
    //请求单独拦截器
    if(inter != null){
      inters.add(inter);
    }

    dio.interceptors.addAll(inters);




    final options = Options(method: method);
    try{
      Response response = await dio.request(url,queryParameters: params,options: options);
      return response.data;

    } on DioException catch(e){
        return Future.error(e);
    }



  }

}