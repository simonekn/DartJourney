import 'package:dartproject_01_oo/enumerator/tipo_notifi.dart';

abstract class People{
  String? _name;
  String _adres = "";
  String _email = "";
  String _cel = "";
  String _token = "";
  TipoNotifi _tipoNotifi = TipoNotifi.none;

  void setEmail(String email){
    _email = email;
  }

  String getEmail() {
    return _email;
  }

  void setCel(String cel){
    _cel = cel;
  }

  String getCel() {
    return _cel;
  }

  void setToken(String token){
    _token = token;
  }

  String getToken(){
    return _token;
  }

  void setName(String name){
    _name = name;
  }

  String? getName(){
    return _name;
  }

  void setAdres(String adres){
    _adres = adres;
  }

  String getAdres(){
    return _adres;
  }

  void setTipoNotifi(TipoNotifi tipoNotifi){
    _tipoNotifi = tipoNotifi;
  }

  TipoNotifi getTipoNotifi() {
    return _tipoNotifi;
  }

  People(String name, String adres, {TipoNotifi tipoNotifi = TipoNotifi.none}){
    _name = name;
    _adres = adres;
    _tipoNotifi = tipoNotifi;
  }

  @override
  String toString() {
    return {
      "Name": _name,
      "Adress": _adres,
      "Notification": _tipoNotifi
    }.toString();
  }
}