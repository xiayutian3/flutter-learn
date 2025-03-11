void main() async {
// print('say hellop');
// await Future.delayed(new Duration(seconds: 5),(){
//     print('chibaole');
// });
// print('play game');


//一共等待 3s 才全部执行完
Future.wait([
    Future.delayed(new Duration(seconds:1),(){
        print(001);
    }),
     Future.delayed(new Duration(seconds:1),(){
        print(002);
    }),
     Future.delayed(new Duration(seconds:3),(){
        print(003);
    })
]).then((value) => {
    print('all done')
}).then((value){
    print('all done2');
});


//一共等待1+2+3 6s 才全部执行完
//   await Future.delayed(new Duration(seconds: 1), () {
//     print(001);
//   });
//   await Future.delayed(new Duration(seconds: 2), () {
//     print(002);
//   });
//   await Future.delayed(new Duration(seconds: 3), () {
//     print(003);
//   });
}
