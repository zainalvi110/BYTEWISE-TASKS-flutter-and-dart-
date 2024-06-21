class Job {
  // Use final for immutability (consider changing if job details might change)
  final String designation;
  final double salary;
  final int id;

  Job(this.designation, this.salary, this.id);
}

class Employee {
  // Consider using Job object instead of String for job details
  final String name;
  final Job job; // Data member of type Job

  Employee(this.name, this.job); // Constructor takes a Job object

  String get designation => job.designation; // Getter for designation
  double get salary => job.salary; // Getter for salary
  int get id => job.id; // Getter for ID

  bool isHighSalary() => salary > 50000; // Checks for high salary

  void displayInfo() {
    print('Name: $name');
    print('Designation: $designation');
    print('Salary: \$' + salary.toStringAsFixed(2)); // Format salary
    print('Job ID: $id');
  }
}

void main() {
  Job developerJob =
      Job('Software Developer', 65000.00, 123); // Fixed salary value
  Employee john = Employee('John Doe', developerJob);

  john.displayInfo();
  print(john.isHighSalary()); // Output: true (if salary is above 50000)
}
