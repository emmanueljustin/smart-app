import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartapp/src/auth/presentation/blocs/login/login_bloc.dart';
import 'package:smartapp/src/auth/presentation/blocs/register/register_bloc.dart';

class BlocProviders {
  static List<BlocProvider> get() {
    return [
      BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
      BlocProvider<RegisterBloc>(create: (context) => RegisterBloc())
    ];
  }
}