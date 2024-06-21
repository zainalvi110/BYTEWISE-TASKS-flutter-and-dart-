class students {
  String name;
  List<int> resultarray;

  students()
      : name = '',
        resultarray = List.filled(5, 0);

  students.withname(this.name, res) : resultarray = List.filled(5, 0);

  students.withboth(this.name, this.resultarray);

  double average() {
    if (resultarray.isEmpty) {
      return 0.0;
    }
    return resultarray.reduce((sum, element) => sum + element) /
        resultarray.length;
  }

  int compare(students other) {
    double thisaverage = average();
    double otheraverage = other.average();

    if (thisaverage > otheraverage) {
      return 1;
    } else if (otheraverage > thisaverage) {
      return -1;
    } else {
      return 0;
    }
  }
}
