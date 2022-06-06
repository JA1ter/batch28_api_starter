class User{
  String? email;
  String? address;
  String? phone;
  String? username;
  String? password;
  String? country;


User(
  {
    this.email,
    this.address,
    this.phone,
    this.username,
    this.password,
    this.country
  });
  
  //converting json data to dart object

  factory User.fromJson(Map<String, dynamic> json) => User(
    email: json["email"],
    address: json["address"],
    phone: json["phone"],
    username: json["username"],
    password: json["password"],
    country: json["country"]
  );

  //converting dart object to json data 
  Map<String, dynamic> toJson() => {
    "email": email,
    "address": address,
    "phone": phone,
    "username": username,
    "password": password,
    "country": country
  };
  
}
