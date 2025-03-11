int add(int x, int y){
    return(x +y);
}


class Calc{
    int x=0;
    int y=0;

    //构造函数 同名
    Calc(int x, int y){
        this.x = x;
        this.y = y;
    }
    minus(){
        print(this.x - this.y);
    }

}