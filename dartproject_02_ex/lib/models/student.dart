class Student {
  String _name = "";
  final List<double> _scores = [];

  Student(String name) {
    _name = name;
  }

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  List<double>getScore() {
    return _scores;
  }

  void addScores(double score) {
    _scores.add(score);
  }

  double returnAverage() {
    var totalScore = 0.0;
    for (var score in _scores) {
      totalScore = totalScore + score;
    }
    return totalScore / _scores.length;
  }

  bool pass(double cutoffScore){
    return returnAverage() >= cutoffScore;
  }
}