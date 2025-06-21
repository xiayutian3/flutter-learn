class Person {
  String? name;
  String? avatarURL;

  //自定义命名构造器
  Person.fromMap(Map<String, dynamic> json) {
    this.name = json["name"];
    this.avatarURL = json["avatars"]["medium"];
  }
}

class Actor extends Person {
  Actor.fromMap(Map<String, dynamic> json) : super.fromMap(json);
}

class Director extends Person {
  Director.fromMap(Map<String, dynamic> json) : super.fromMap(json);
}

int counter = 1;

class MovieItem {
  int? rank;
  String? imageURL;
  String? title;
  String? playDate;
  double? rating;
  List<String>? genres;
  List<Actor>? casts;
  Director? director;
  String? originalTitle;

  //自定义命名构造器
  MovieItem.fromMap(Map<String, dynamic> json) {
    this.rank = counter++;
    this.imageURL = json["images"]["medium"];
    this.title = json["title"];
    this.playDate = json["year"];
    this.rating = json["rating"]["average"];
    this.genres = json["genres"].cast<String>();
    this.casts = (json["casts"] as List<dynamic>).map((item) {
      return Actor.fromMap(item);
    }).toList();
    this.director = Director.fromMap(json["directors"][0]);
    this.originalTitle = json["original_title"];
  }


  //方便打印数据，查看控制台数据
  @override
  String toString() {
    return 'MovieItem{rank: $rank, imageURL: $imageURL, title: $title, playDate: $playDate, rating: $rating, genres: $genres, casts: $casts, director: $director, originalTitle: $originalTitle}';
  }
}


//每个item的demo
class MovieItemDemo {
  int? rank;
  String? imageURL;
  String? title;
  String? playDate;
  double? rating;
  List<String>? genres;
  List<Actor>? casts;
  Director? director;
  String? originalTitle;

  MovieItemDemo(
    this.rank,
    this.imageURL,
    this.title,
    this.playDate,
    this.rating,
    this.genres,
    this.casts,
    this.director,
    this.originalTitle,

  );
}
