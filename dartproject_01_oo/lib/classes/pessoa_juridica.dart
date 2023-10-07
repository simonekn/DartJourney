import 'package:dartproject_01_oo/classes/people.dart';
import 'package:dartproject_01_oo/enumerator/tipo_notifi.dart';

class PessoaJuridica extends People{
  String _cnpj = "";

  void setCnpj(String cnpj){
    _cnpj = cnpj;
  }

  String getCnpj(){
    return _cnpj;
  }

  PessoaJuridica(String name, String adres, String cnpj, {TipoNotifi tipoNotifi = TipoNotifi.none})
  : super(name, adres, tipoNotifi: tipoNotifi){
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {"Name": getName(), "Adress": getAdres(), "CNPJ": _cnpj, "Notificaion:": getTipoNotifi()}.toString();
  }
}