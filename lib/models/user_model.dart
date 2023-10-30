class User {
  final String imagePath;
  final String logo;
  final String name;
  final String email;
  final String number;
  final bool isDarkMode;

  const User({
    required this.imagePath,
    required this.name,
    required this.logo,
    required this.email,
    required this.number,
    required this.isDarkMode,
  });
}
