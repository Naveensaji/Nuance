class ProfileModel {
  final String? username;
  final String? useremail;
  final String? userphone;
  final String? image;
 

  ProfileModel(
      {
      required this.username,
      required this.useremail,
      required this.userphone,
      required this.image,
     });

  Map<String, dynamic> toJson() => {
        'email': useremail,
        'username': username,
        'phone': userphone,
        "image": image,
      
      };

  static ProfileModel fromJson(Map<String, dynamic> json) => ProfileModel(
      useremail: json['email'],
      username: json['username'],
      userphone: json['phone'],
      image: json['image'],
    );
}
