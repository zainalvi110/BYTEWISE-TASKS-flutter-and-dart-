abstract class person {
  String name;
  String email_adress;
  String adress;
  int phone_nm;

  person(this.name, this.email_adress, this.adress, this.phone_nm);
}

class student extends person {
  String status;
  student(this.status, super.name, super.email_adress, super.adress,
      super.phone_nm);
}

class employee extends person {
  num salary;
  int office;
  DateTime datehired;
  employee(this.salary, this.office, super.name, super.email_adress,
      super.adress, super.phone_nm,
      {DateTime? datehired})
      : this.datehired = datehired ?? DateTime.now(); //this.datehired);
}

class faculty extends employee {
  num office_hours;
  int rank;
  faculty(
      super.phone_nm,
      super.salary,
      super.name,
      super.email_adress,
      super.adress,
      super.office,
      DateTime datehired,
      this.office_hours,
      this.rank);
  void display() {
    print(
        'The details of this faculty person are : name = ${name} : adress = ${adress} :phone =${phone_nm} : email= ${email_adress}  : salary = ${salary} : office = ${office} : datehired = ${datehired} : office hours = ${office_hours} and rank is : = ${rank}');
  }
}

class staff extends employee {
  String title;
  staff(super.name, super.address, super.phone_nm, super.email_address,
      super.office, super.salary, DateTime datehired, this.title);
  void display() {
    print(
        'The details of this staff person are : name = ${name} : adress = ${adress} : email= ${email_adress} : phone = ${phone_nm} : salary = ${salary} : office = ${office} : datehired = ${datehired} : and title is = ${title}');
  }
}

void main() {
  DateTime datehired = DateTime(2024, 06, 01);
  faculty fc = faculty(03182733998, 24500, 'zainalvi', 'alvi552@gmail',
      'malir cantonment', 01, datehired, 08, 14);
  fc.display();
}
