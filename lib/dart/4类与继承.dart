void main() {
    var  p = new Person(23, 'lisi');
    // print(p);
    // print(p.age);
    //  print(p.name);
    //  p.sayHello();



     var w = new Worker(12, 'pop',2300);
     print( w.age);
     w.sayHello();
}



class Person{
    int age = 0;
    String name = "";
    //构造函数，与类名一致
    Person(int age, String name) {
        this.name = name;
        this.age = age;
    }   

    //方法
    void sayHello(){
        print('my name is '+ this.name);
    }
}


//继承
class Worker extends Person{
    int salary = 0;

    //继承父类构造器
  Worker(super.age, super.name,int salary) {
    this.salary = salary;
  }



//方法重写
    @override
  void sayHello(){
    //先调用父类的方法
    super.sayHello();

    print('salary is '+ this.salary.toString());
  }
    
}