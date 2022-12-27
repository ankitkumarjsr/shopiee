import 'address_model.dart';

class User{
  final String name;
  final String email;
  final String phoneno;
  Address address;

  User({
    required this.address,
   required this.name,
    required this.email,
   required this.phoneno,
});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        address: json['address'],
        name: json['name'],
        email: json['email'],
        phoneno: json['phoneno']
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'address': address.toJson(),
      'name': name,
      'email': email,
      'phoneno': phoneno,
    };
  }


}