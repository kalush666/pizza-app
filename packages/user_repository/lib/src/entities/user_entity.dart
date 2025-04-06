class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  Map<String, Object?> toDocument() {
    return <String, Object?>{
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> data) {
    return MyUserEntity(
      userId: data['userId'],
      email: data['email'],
      name: data['name'],
      hasActiveCart: data['hasActiveCart'],
    );
  }
}
