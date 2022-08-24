class EmployeeModel {
  String? lastName;
  String? firstName;
  String? extension;
  String? email;
  String? officeCode;
  int? reportsTo;
  String? jobTitle;

  EmployeeModel(
      {this.lastName,
      this.firstName,
      this.extension,
      this.email,
      this.officeCode,
      this.reportsTo,
      this.jobTitle});
}
