class profile{
  final String name;
  String message;
  final String time;
  final String imageUrl;
   final String likes;

  profile({this.name, this.message, this.time, this.imageUrl, this.likes});
}

List<profile> profileData = [

  new profile(
    name: "Raushan Jha",
    message: "Flutter Developer",
    time: "10:12",
    likes: "29 likes",
    imageUrl: "https://learncodeonline.in/wp-content/uploads/2019/01/raushan-260x260.png"
    
  ),
 
];