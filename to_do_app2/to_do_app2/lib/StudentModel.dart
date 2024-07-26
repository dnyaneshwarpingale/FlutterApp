class StudentModel {
  final int rollNo;
  final String studName;
  final bool status;

  const StudentModel(
      {required this.rollNo, required this.studName, required this.status});
}

List<StudentModel> studentList = [];
