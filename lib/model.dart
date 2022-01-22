

class Student{
  String name;
  String mobile;
  String email;
  String gender;
  String courses;
  String address;

//<editor-fold desc="Data Methods">

  Student({
    required this.name,
    required this.mobile,
    required this.email,
    required this.gender,
    required this.courses,
    required this.address,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Student &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          mobile == other.mobile &&
          email == other.email &&
          gender == other.gender &&
          courses == other.courses &&
          address == other.address);

  @override
  int get hashCode =>
      name.hashCode ^
      mobile.hashCode ^
      email.hashCode ^
      gender.hashCode ^
      courses.hashCode ^
      address.hashCode;

  @override
  String toString() {
    return 'Student{' +
        ' name: $name,' +
        ' mobile: $mobile,' +
        ' email: $email,' +
        ' gender: $gender,' +
        ' courses: $courses,' +
        ' address: $address,' +
        '}';
  }

  Student copyWith({
    String? name,
    String? mobile,
    String? email,
    String? gender,
    String? courses,
    String? address,
  }) {
    return Student(
      name: name ?? this.name,
      mobile: mobile ?? this.mobile,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      courses: courses ?? this.courses,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'mobile': this.mobile,
      'email': this.email,
      'gender': this.gender,
      'courses': this.courses,
      'address': this.address,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      name: map['name'] as String,
      mobile: map['mobile'] as String,
      email: map['email'] as String,
      gender: map['gender'] as String,
      courses: map['courses'] as String,
      address: map['address'] as String,
    );
  }

//</editor-fold>
}