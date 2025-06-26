
import 'package:first_flutter_project/douban/model/home_model.dart';
import 'package:first_flutter_project/service/home_request.dart';
import 'package:flutter/material.dart';
import 'home_movie_item.dart';


class HYHomeContent extends StatefulWidget {
  const HYHomeContent({super.key});

  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  //模拟数据
  final List<MovieItem> movies = [
    MovieItem.fromMap({
      "images": {
        "medium": "https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg"
      },

      "title": "海市蜃楼海市蜃楼海市蜃楼海市蜃楼海市蜃楼",
      "year": "1994",
      "rating": {
        "average": 9.7
      },
      "genres": ["Drama", "Crime"],
      "casts": [
        {
          "name": "Tim Robbins",
          "avatars": {
            "medium": "https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg"
          }
        },
        {
          "name": "Morgan Freeman",
          "avatars": {
            "medium": "https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p34642.jpg"
          }
        }
      ],
      "directors": [
        {
          "name": "Frank Darabont",
          "avatars": {
            "medium": "https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg"
          }
        }
      ],
      "original_title": "The Shawshank Redemption"
    })
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //发送请求（因为接口用不了没数据）
    // HomeRequest.reuestMovieList(0, 10).then((res){
    //   movies.addAll(res);
    // });
    // print(movies[0]);
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
        itemBuilder:(ctx,index){
        return HYHomeMovieItem(movies[0]);
        }

    );
  }
}
