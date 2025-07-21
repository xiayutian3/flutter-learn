import 'package:flutter/material.dart';
import '../../../core/services/json_parse.dart';
import '../../../core/extension/int_extension.dart';
import '../../../core/model/category_model.dart';

class HYHome extends StatelessWidget {
  const HYHome({super.key});

  @override
  Widget build(BuildContext context) {

    // FutureBuilder 的使用


    return FutureBuilder<List<Category>>(
        future: JsonParse.getCategoryData(),
        builder: (context,snapshot){
          // 如果没有有数据
          if(!snapshot.hasData) return Center(child: CircularProgressIndicator(),);

          // 请求失败
          if(snapshot.hasError) return Center(child: Text('请求失败'),);

          // 如果有数据
          final List _categories = snapshot.data!;

          return Scaffold(
              appBar: AppBar(
                title: const Center(
                    child: Text('美食广场'),
                ),
                backgroundColor: Colors.blueAccent,
              ),
              body:   GridView.builder(
            // 内边距
              padding: EdgeInsets.all(20.px),
              itemCount: _categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.px,
                  mainAxisSpacing: 20.px,
                  childAspectRatio: 1.5
              ),
              itemBuilder: (ctx, index){
                return HYitemBuilder(_categories[index]);
              }
          )
          );

        }
    );
  }
}


//每个卡片
class HYitemBuilder extends StatelessWidget {
 late final Category _category;

   HYitemBuilder(this._category);

  @override
  Widget build(BuildContext context) {
    final Color bgColor = _category.cColor!;
    return Container(
      decoration: BoxDecoration(
        // color: bgColor,
          borderRadius: BorderRadius.circular(12.px),
          //颜色渐变
          gradient: LinearGradient(
              colors: [
                bgColor.withOpacity(0.5),
                bgColor
              ]
          )
      ),
      alignment: Alignment.center,
      child: Text(
          _category.title!,
          // 由于没有设置主题文字大小
          // style: Theme.of(context).textTheme.displayLarge,
          style:TextStyle(fontSize: 14)
      ),
    );
  }
}

