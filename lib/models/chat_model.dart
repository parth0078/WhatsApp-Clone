class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});

}

List<ChatModel> chatData = [
  ChatModel(
      name: "Akshay kumar",
      message: "Hann",
      time: "yesterday",
      avatarUrl:
      "https://timesofindia.indiatimes.com/thumb/msid-72914267,width-800,height-600,resizemode-4/72914267.jpg?imglength=143142"),
  ChatModel(
      name: "Anuska sharma",
      message: "Okay",
      time: "4:50 pm",
      avatarUrl:
      "https://www.livemint.com/rf/Image-621x414/LiveMint/Period1/2015/02/28/Photos/anuska-kxgE--621x414@LiveMint.jpg"),
  ChatModel(
      name: "kriti sanon",
      message: "how are you? ",
      time: "4:10 pm",
      avatarUrl: "https://im.rediff.com/movies/2019/feb/27kritisanon1.jpg"),
  ChatModel(
      name: "Jawed karim",
      avatarUrl:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Jawed_Karim_2008.jpg/457px-Jawed_Karim_2008.jpg",
      time: "1:10 pm",
      message: "youtube joo"),
  ChatModel(
    name: "Steve Chen",
    avatarUrl:
    "https://i.insider.com/4d70f7944bd7c80272080000?width=300&format=jpeg&auto=webp",
    time: "4:10 pm",
    message: "Youtube videos are nice",),
];