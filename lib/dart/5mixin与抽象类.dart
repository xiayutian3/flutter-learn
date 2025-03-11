void main() {
      var  p = new Person(23, 'lisi');
     p.sleep();
     p.sayHello();
      p.havaababy();

}

// mixin 类
mixin Eat {
    void eat(){
        print('eat');
    }

    void sayHello(){
        print('in eat');
    }
}

// mixin 类
mixin Sleep {
    void sleep(){
        print('sleep');
    }

    void sayHello(){
        print('in sleep');
    }
}

// 抽象类
abstract class Animal {
    //抽象方法
    void havaababy();
}



//1.如果类中也有同名方法，优先选择类的方法
//2.类中没有，mixin类中有同名方法，优先使用后面的mixin 类，后面的mixin类会覆盖前面的mixin类
class Person extends Animal with Eat , Sleep{
    int age = 0;
    String name = "";
    //构造函数，与类名一致
    Person(int age, String name) {
        this.name = name;
        this.age = age;
    }   

    // //方法
    // void sayHello(){
    //     print('my name is '+ this.name);
    // }

    @override
    void havaababy(){
        print('youyige baby');
    }
}