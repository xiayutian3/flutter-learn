import './http_request.dart';
import '../douban/model/home_model.dart';



class HomeRequest {
  static Future reuestMovieList(int start, int count) async {
    // 1.拼接URL
    final url = "https://douban.uieee.com/v2/movie/top250?start=$start&count=$count";

    // 2.发送请求
    final result = await HttpRequest.request(url);

    // 3.转成模型对象
    final subjects = result["subjects"];
    List<MovieItem> movies = [];
    for (var sub in subjects) {
      movies.add(MovieItem.fromMap(sub));
    }

    //已重写tostring方法，控制台看数据方便
    // print(movies);
    return movies;
  }
}