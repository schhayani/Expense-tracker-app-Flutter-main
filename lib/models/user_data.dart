class Employee {
  final int id;
  final String username;
  final String email;
  final String password;

  // constructor
  Employee({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() => {
        // id will generate automatically
        'id': id,
        'usename': username,
        'email': email,
        'password': password,
      };

  factory Employee.fromString(Map<String, dynamic> value) => Employee(
        id: value['id'],
        username: value['username'],
        email: value['email'],
        password: value['password'],
      );
}
