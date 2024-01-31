
import 'package:dio/dio.dart';
import 'package:fe_lab_clinicas_core/src/constants/local_storage_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final RequestOptions(:headers, :extra) = options;
    const authHeaderKey = 'Authorization';
    headers.remove(authHeaderKey);
    
    if(extra case {'DIO_AUTH_KEY' : true}){
      final sp = await SharedPreferences.getInstance();
      headers.addAll({
        authHeaderKey: 'Bearer ${sp.getString(LocalStorageConstants.accessToken)}'
      });  
    }
    handler.next(options);
    
  }
}