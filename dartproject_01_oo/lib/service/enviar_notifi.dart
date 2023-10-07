import 'package:dartproject_01_oo/classes/people.dart';
import 'package:dartproject_01_oo/enumerator/tipo_notifi.dart';
import 'package:dartproject_01_oo/service/implementation/notifi_email.dart';
import 'package:dartproject_01_oo/service/implementation/notifi_push.dart';
import 'package:dartproject_01_oo/service/implementation/notifi_sms.dart';
import 'package:dartproject_01_oo/service/notifi_interface.dart';

class EnviarNotifi {

  NotifiInterface? notification;

  void notifi(People people){
    switch (people.getTipoNotifi()){
      case TipoNotifi.email:
      notification = NotifiEMAIL();
      break;
      case TipoNotifi.pushNotification:
      notification = NotifiPUSH();
      break;
      case TipoNotifi.sms:
      notification = NotifiSMS();
      break;
      default:
      
      break;
    } 
    if (notification != null){
      notification!.enviarNotifi(people);
    }else {
      print("Doesn't have any type of notification defined");
    }
    
  }
}