import 'package:dartproject_01_oo/classes/people.dart';
import 'package:dartproject_01_oo/enumerator/tipo_notifi.dart';

class PessoaFisica extends People{
  String _cpf = "";

  void setCpf(String cpf){
    _cpf = cpf;
  }

  String getCpf(){
    return _cpf;
  }

  PessoaFisica(String name, String adres, String cpf, {TipoNotifi tipoNotifi = TipoNotifi.none}) 
  : super(name, adres, tipoNotifi: tipoNotifi){
    _cpf = cpf;
  }

  @override
  String toString() {
    return {"Name": getName(), "Adress": getAdres(), "CPF": _cpf, "Notificaion:": getTipoNotifi()}.toString();
  }
}