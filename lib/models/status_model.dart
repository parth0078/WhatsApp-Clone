class StatusModel{
  final String name;
  final String minute;
  final String imageUrl;

  StatusModel({this.name, this.minute, this.imageUrl});

}
List <StatusModel>statusData=[
  StatusModel(name: "Jay",
  imageUrl: "https://timesofindia.indiatimes.com/thumb/msid-72914267,width-800,height-600,resizemode-4/72914267.jpg?imglength=143142",
   minute: "43 minutes ago"),
  StatusModel(name: "pooja",
      imageUrl: "https://timesofindia.indiatimes.com/thumb/msid-72914267,width-800,height-600,resizemode-4/72914267.jpg?imglength=143142",
      minute: "10 minutes ago"),
  StatusModel(name: "Vishal narvani",
      imageUrl: "https://timesofindia.indiatimes.com/thumb/msid-72914267,width-800,height-600,resizemode-4/72914267.jpg?imglength=143142",
      minute: "25 minutes ago"),
  StatusModel(name: "Jay",
      imageUrl: "https://timesofindia.indiatimes.com/thumb/msid-72914267,width-800,height-600,resizemode-4/72914267.jpg?imglength=143142",
      minute: "1 hours ago"),
];