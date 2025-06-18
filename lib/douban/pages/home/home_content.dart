
import 'package:first_flutter_project/douban/model/home_model.dart';
import 'package:first_flutter_project/service/home_request.dart';
import 'package:flutter/material.dart';


class HYHomeContent extends StatefulWidget {
  const HYHomeContent({super.key});

  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  final List<MovieItem> movies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //发送请求
    HomeRequest.reuestMovieList(0, 10).then((res){
      print(res);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('hello',style: TextStyle(color: Colors.red,fontSize: 30),),
    );
  }
}
