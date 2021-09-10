import 'package:facebbook/models/model.dart';

class Story {
  User user;
  String urlImage;
  bool viewed;

  Story({
     required this.user,
     required this.urlImage,
     this.viewed = false,
  });
}
