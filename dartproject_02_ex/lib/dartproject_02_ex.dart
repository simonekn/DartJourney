import 'package:dartproject_02_ex/models/console_utils.dart';
import 'package:dartproject_02_ex/models/student.dart';

void execute() {
  print("Welcome to avaluation system.");
  String name = ConsoleUtils.readTextString("Enter with the student name:  ") ; 
  var student = Student(name);
  double? score;
  do {
    score = ConsoleUtils.readtextDouble("Enter with the score or L to leave");
    if (score != null){
      student.addScores(score);
    }
  }while (score != null);
  print("$name scores: ${student.getScore()}");
  print("$name average: ${student.returnAverage()}");
  if (student.pass(7)) {
    print("$name situation: Pass");
  } else {
    print("$name situation: Fail");
  }
} 