import 'package:flutter/material.dart';

void main() {
  runApp(
      Myapp()
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HyHomepage()
    );
  }
}

class HyHomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('第一个flutter'),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body:HyBody()
    );
  }
}

//无状态组件
// class HyBody extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return  Center(
//       child: Text(
//         'hello wolrd',
//         textDirection: TextDirection.ltr,
//         style: TextStyle(
//             fontSize: 30,
//             color: Colors.amberAccent
//         ),
//       ),
//     );
//   }
// }

//有状态组件
class HyBody extends StatefulWidget{
  @override
  State createState(){
    return HyContentState();
  }
}
class HyContentState extends State<HyBody>{
  var flag = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: flag,
                onChanged: (value){
                  setState(() {
                    flag = value!;
                  });

                }
            ),
            const Text(
              '同意协议',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.amberAccent
              ),
            )
          ],
        )

    );
  }

}


