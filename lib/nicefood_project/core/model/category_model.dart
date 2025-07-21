import 'dart:ui';

//核心作用 toJson()
//序列化（Serialization）
    //将对象转换为 JSON 格式，便于：
    //网络传输（如发送到后端 API）
    //本地存储（如保存到 SharedPreferences 或文件）
    //跨平台数据交换（如与 JavaScript/Web 交互）
//与 fromJson 配对使用
      //fromJson: 将 JSON → Dart 对象（反序列化）
      //toJson: 将 Dart 对象 → JSON（序列化）
      //两者配合实现对象与数据的双向转换。

class Category {
  final String? id;
  final String? title;
  final String? color;
  final Color? cColor;

  Category({this.id, this.title, this.color, this.cColor});

  factory Category.fromJson(Map<String, dynamic> json) {
    // 1. 将颜色字符串转成十六进制数字
    final colorInt = int.parse(json['color'], radix: 16);
    // 2. 添加透明度并生成 Color 对象
    final cColor = Color(colorInt | 0xFF000000);

    return Category(
        id: json['id'] as String?,
        title: json['title'] as String?,
        color: json['color'] as String?,
        cColor: cColor);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'color': color,
      };
}
