class Circle{
  final double PI = 3.1415;
  num r;

  Circle(this.r);

  // num area(){
  //   return PI*r*r;
  // }

  //使用get声明的方法不能有小括号
  num get area {
    return PI*r*r;
  }

  //Setter
  set setR(value){
    this.r = value;
  }
  
}
void main() {
  var c = new Circle(10);
  // print(c.area());
  print(c.area);
  
  //通过Setter修改属性
  c.setR=20;
  print(c.area);
}