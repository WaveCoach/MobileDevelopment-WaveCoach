// import 'package:flutter/material.dart';
// import 'package:wavecoach/data/models/user_model.dart';
// import 'package:wavecoach/data/services/auth_service.dart';

// class AuthProvider with ChangeNotifier {
//   UserModel _user;

//   UserModel get User => _user;

//   set user(UserModel user) {
//     _user = user;
//     notifyListeners();
//   }

//   Future<bool> register({String email, String password}) async {
//     try{
//       UserModel user = Await AuthService().login(email: email, password: password);

//       _user = user;
//       return true;
//     } catch(e){
//       print(e);
//       return false;
//     }
//   }
// }
