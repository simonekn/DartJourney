import 'package:dartproject_01_oo/classes/pessoa_fisica.dart';
import 'package:dartproject_01_oo/classes/pessoa_juridica.dart';
import 'package:dartproject_01_oo/enumerator/tipo_notifi.dart';
import 'package:dartproject_01_oo/service/enviar_notifi.dart';

void main(List<String> arguments) {
  
  var pessoaFisica1 = PessoaFisica("Simone", "Rua 0", "XXX.XXX");
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica("Empresa1", "Rua 0", "XXX.XXXl", tipoNotifi: TipoNotifi.sms);
  print(pessoaJuridica1);

  EnviarNotifi enviarNotifi = EnviarNotifi();
  enviarNotifi.notifi(pessoaFisica1);
  enviarNotifi.notifi(pessoaJuridica1);
}
