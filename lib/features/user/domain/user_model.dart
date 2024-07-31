class User {
  final String email;
  final String nim;
  final String name;
  final String department;
  final String batch;
  final String graduationYear;
  final String phoneNumber;
  final String? photoUrl;
  final String address;
  final String longitudes;
  final String latitudes;

  User({
    required this.email,
    required this.nim,
    required this.name,
    required this.department,
    required this.batch,
    required this.graduationYear,
    required this.phoneNumber,
    this.photoUrl,
    required this.address,
    required this.longitudes,
    required this.latitudes,
  });
}
