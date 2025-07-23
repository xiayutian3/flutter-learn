import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/extension/int_extension.dart';
import '../../core/model/meal_model.dart';
import 'operation_item.dart';
import '../../ui/pages/detail/detail.dart';

final cardRadius = 12.px;

class HYMealItem extends StatelessWidget {
  final HyMealModel _meal;
  HYMealItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.px),
        // 阴影
        elevation: 5,
        //边框圆角
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.px)),
        child: Column(
          children: [
            buildBasicInfo(context),
            buildOperationInfo()
          ],
        ),
      ),
      onTap: (){
        //路由跳转
        Navigator.of(context).pushNamed(HYDetail.routeName,arguments: _meal);
      },
    );
  }


  //img 内容
  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        // 1. 图片部分（顶部圆角裁剪）
        ClipRRect(
          // 上两边框圆角
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(cardRadius),
            topRight: Radius.circular(cardRadius),
          ),
          // 图片没有请求到 ，暂时不传图片
          // child: Image.network(
          //   _meal.imageUrl,
          //   width: double.infinity, //尽可能无限大
          //   height: 250.px,
          //   fit: BoxFit.cover,
          // ),
          child: Container(
            width: double.infinity,
            height: 250.px,
          )
        ),
        // 2. 标题部分（半透明背景）
        // 定位组件
        Positioned(
          right: 10.px,
          bottom: 10.px,
          child: Container(
            width: 300.px,
            // 边距
            padding: EdgeInsets.symmetric(horizontal: 10.px, vertical: 5.px),
            //边框 背景
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6.px),
            ),
            child: Text(
              _meal.title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  //操作信息
  Widget buildOperationInfo() {
    return Padding(
      padding: EdgeInsets.all(16.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          HYOperationItem(Icon(Icons.schedule), "${_meal.duration}分钟"),
          HYOperationItem(Icon(Icons.restaurant), "${_meal.complexityStr}"),
          HYOperationItem(Icon(Icons.favorite), "未收藏"),
        ],
      ),
    );
  }



}
