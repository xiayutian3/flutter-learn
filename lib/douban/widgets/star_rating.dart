import 'package:flutter/material.dart';

class HYStarRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor ;
  final Color selectedColor;
  final Widget unselectedImage;
  final Widget selectedImage;


  HYStarRating({
    super.key,
    required this.rating,
    this.maxRating = 10,
    this.size = 30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffe0aa46),
    this.count = 5,
    Widget? unselectedImage,
    Widget? selectedImage,
  }): unselectedImage = unselectedImage ?? Icon(Icons.star_border,color: unselectedColor,size: size,),
        selectedImage = selectedImage ?? Icon(Icons.star,color: selectedColor,size: size,);


  @override
  State<HYStarRating> createState() => _HYStarRatingState();
}

class _HYStarRatingState extends State<HYStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildUnselectedStar(),
        ),
        Row(
            mainAxisSize: MainAxisSize.min,
            children: buildselectedStar()
        ),
      ],
    );

  }

  //未选中
  List<Widget> buildUnselectedStar(){
    return List.generate(widget.count, (index) {
      return widget.unselectedImage;
    });
  }

//  选中
  List<Widget> buildselectedStar(){
    // 1.创建starts
    List<Widget> stars = [];
    final star  = widget.selectedImage;

    // 2.构建满填充的star
    double oneValue = widget.maxRating/widget.count;
    int entireCount = (widget.rating/oneValue).floor();
    for (var i = 0;i<entireCount; i++){
      stars.add(star);
    }

    // 3.构造部分star
    double leftWidth = ((widget.rating / oneValue) - entireCount) * widget.size;
    final halfStar = ClipRect(
      child: star,
      clipper: HYStarClipper(leftWidth),
    );

    stars.add(halfStar);

    //星星超过指定的数量，返回指定的数量 如 5个星，传入的分数11，应该时5个满星
    if(stars.length > widget.count){
      return stars.sublist(0,widget.count);
    }

    return  stars;

  }
}

// star裁剪函数
class HYStarClipper extends CustomClipper<Rect>{
  double width;

  //同名构造函数
  HYStarClipper(this.width);


  @override
  Rect getClip(Size size){
    // size.height 裁剪目标的高度
    return Rect.fromLTRB(0 , 0, width, size.height);
  }

  @override
  bool shouldReclip(HYStarClipper oldClipper){
    return oldClipper.width != this.width;
  }
}
