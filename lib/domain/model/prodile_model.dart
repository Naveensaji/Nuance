class ProfileModel {
  final String? username;
  final String? useremail;
  final String? userphone;
  final String? image;
  final String? address;

  ProfileModel( 
      {
      this.username,
      required this.useremail,
      this.userphone,
      this.image,
      this.address,
     });

  Map<String, dynamic> toJson() => {
        'email': useremail,
        'username': username,
        'phone': userphone,
        "image": image,
        "address": address
      
      };

  static ProfileModel fromJson(Map<String, dynamic> json) => ProfileModel(
      useremail: json['email'],
      username: json['username'],
      userphone: json['phone'],
      image: json['image'],
       address: json['address']
    );
}
