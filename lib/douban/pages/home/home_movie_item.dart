import 'package:first_flutter_project/douban/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import '../../model/home_model.dart';

class HYHomeMovieItem extends StatelessWidget {
  final MovieItem movie;

  HYHomeMovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
//      内边距
      padding: EdgeInsets.all(8),
      //底部边框
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 8, color: Colors.pink))),
      child: Column(
        //对其方式
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          SizedBox(
            height: 8,
          ),
          buildContent(),
          SizedBox(
            height: 8,
          ),
          Text('No.1'),
        ],
      ),
    );
  }

  // 1.创建头部
  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      // color: color属性也可以设置背景颜色，但是和 decoration属性有冲突，直接使用decoration来设置
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 205, 144),
          borderRadius: BorderRadius.circular(3)),
      child: Text('No.${movie.rank}'),
    );
  }

  // 2.创建内容区
  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        SizedBox(
          width: 8,
        ),
        buildContentInfo()
      ],
    );
  }

// 2.创建内容去图片
  Widget buildContentImage() {
    // 强制转换 类型不为null
    // String imgurl = movie.imageURL!;
    // ClipRRect图片圆角
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        movie.imageURL!,
        height: 150,
      ),
    );
  }

  // 2.创建内容去info
  Widget buildContentInfo() {
    return Expanded(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, //
          children: [
            buildContentInfoTitle(),
            SizedBox(height: 8,),
            buildContentInfoRate(),
            SizedBox(height: 8,),
            buildContentInfoDesc()
          ],
        )
    );

  }

  Widget buildContentInfoTitle() {
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(child: Icon(Icons.play_circle_fill_outlined,color: Colors.pink,size: 24,)),
          TextSpan(
            text: movie.title,
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
          ),
          TextSpan(
            text: "(${movie.playDate})",
            style: TextStyle(fontSize: 16,color: Colors.grey)
          )
        ]
      )
    );


  }

  Widget buildContentInfoRate(){
    return Row(
      children: [
        HYStarRating(rating: movie.rating!,size: 20,),
        SizedBox(width: 6,),
        Text('${movie.rating}',style: TextStyle(fontSize: 16),)
      ],
    );
  }

  Widget buildContentInfoDesc(){
    // 字符拼接
    final genres = movie.genres!.join(' ');
    final director = movie.director!.name;
    final actor = movie.casts!.map((e) => e.name).toList().join(' ');


    return Text(
      '犯罪 剧情/犯罪剧情/犯罪剧情/犯罪剧情/犯罪剧情/犯罪剧情/犯罪剧情犯罪剧情/犯罪剧情/犯罪剧情/犯罪剧情',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }


// 3.创建描述栏
}
