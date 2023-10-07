import 'package:dartproject_01_oo/classes/people.dart';
import 'package:dartproject_01_oo/service/notifi_interface.dart';

class NotifiSMS implements NotifiInterface {
  @override
  void enviarNotifi(People people){
    print("Sending SMS to: ${people.getName()}");
  }
}