
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pira/model/user_model.dart';
import 'package:pira/services/api.dart';


final authProvider = StateNotifierProvider<AuthNotifier,AuthState>((ref){



  return AuthNotifier();
});


class AuthNotifier extends StateNotifier<AuthState>{
  AuthNotifier() : super(AuthState());

  void _setloguser(UserModel user){
    state = state.copyWith(
      user:user,
      authStatus: AuthStatus.authenticated,
    );

  }
  



  Future<void> login (String identifier, String password) async{
    try {
      Map<String,String> credenciales = {
        "identifier": identifier,
        "password": password
      };
      final user = await Api().login(credenciales);
      //_setloguser(user);
    } catch (e) {
      logout('Credenciales incorrectas');
    }
  }




  void register (String identifier, String password) async{

  }

  void checkAuthStatus () async {

  }

  Future<void> logout([String? errorMessage]) async{
    state = state.copyWith(
      authStatus: AuthStatus.notAuthenticated,
      errorMessage: errorMessage
    );
  }

}


enum AuthStatus {checking, authenticated, notAuthenticated}

class AuthState{

  final UserModel? user;
  final AuthStatus authStatus;
  final String errorMessage;

  AuthState({
    this.authStatus = AuthStatus.checking,
    this.errorMessage = '',
    this.user
  });

  AuthState copyWith({
    AuthStatus? authStatus,
    UserModel? user,
    String? errorMessage
  })=> AuthState(
    authStatus: authStatus ?? this.authStatus,
    user: user ?? this.user,
    errorMessage: errorMessage ?? this.errorMessage
  );



}