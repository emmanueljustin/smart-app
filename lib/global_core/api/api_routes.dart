class ApiRoutes {

  // Base Url
  static const String baseUrl = 'http://127.0.0.1:8000/api';

  // API type
  static const String auth = 'auth';

  // Api Routes
  String get userLogin => '$baseUrl/$auth/login';
  String get userRegister => '$baseUrl/$auth/register';
  String get userLogout => '$baseUrl/$auth/logout';
  String get refreshToken => '$baseUrl/$auth/refresh';
  String get getUser => '$baseUrl/$auth/user';
}