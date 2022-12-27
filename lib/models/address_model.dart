class Address {
  final String addressLine;
  final String city;
  final String state;
  final String pincode;

  Address(
      {required this.addressLine,
      required this.city,
      required this.state,
      required this.pincode});

  // server se data hamesha json format me aata hai , usse model class ,me convert krna hoga
  // json = map<String,dynamic> but in string format

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        addressLine: json['addressLine'],
        city: json['city'],
        state: json['state'],
        pincode: json['pincode']);
  }

  Map<String, dynamic> toJson() {
    return {
      'addressLine': addressLine,
      'city': city,
      'state': state,
      'pincode': pincode
    };
  }
}
