class ApiRoutes {

  // Base Url
  static const String baseUrl = 'http://192.168.0.150:8080/api';

  // API type
  static const String auth = 'auth';

  // API version
  static const String ver = 'v1';

  // Api Routes
  String get userLogin => '$baseUrl/$ver/$auth/login';
  String get userRegister => '$baseUrl/$ver/$auth/register';
  // String get userLogout => '$baseUrl/$ver/$auth/logout';
  // String get refreshToken => '$baseUrl/$ver/$auth/refresh';
  String get getUser => '$baseUrl/$ver/$auth/user';
}