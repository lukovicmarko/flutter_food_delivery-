import 'package:flutter/material.dart';
import 'package:foodies/modules/http.dart';
import 'package:localstorage/localstorage.dart';
import 'dart:convert';

class AuthData extends ChangeNotifier {
  final LocalStorage storage = new LocalStorage('localstorage_app');

  var _userInfo;

  Future login(email, password) async {
    RequestResult requestResult =
        //RequestResult('https://proshop1986.herokuapp.com/api/users/login');
        RequestResult('http://192.168.0.37:5000/api/users/login');

    var signInResponse = await requestResult.sendData({
      "email": email,
      "password": password,
    });

    //print(signInResponse);
    _userInfo = signInResponse;

    //save to localstorage
    final info = json.encode(_userInfo);
    storage.setItem('info', info);

    notifyListeners();
  }

  get userInfo => _userInfo;
}
