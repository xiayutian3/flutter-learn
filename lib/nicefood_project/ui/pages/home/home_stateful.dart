import 'package:flutter/material.dart';
import '../../../core/services/json_parse.dart';
import '../../../core/extension/int_extension.dart';
import '../../../core/model/category_model.dart';

class HYHome extends StatefulWidget {
  const HYHome({super.key});

  @override
  State<HYHome> createState() => _HYHomeState();
}

class _HYHomeState extends State<HYHome> {
  List _categories = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //请求数据
    JsonParse.getCategoryData().then((data){
      // print(data);
      setState(() {
        _categories = data;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('美食广场'),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.builder(
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

