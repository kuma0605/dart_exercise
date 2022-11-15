//Dart中声明函数，不需要function关键字
void printInfo(){
  print('HELLO, WORLD');
}

//返回值与函数声明的类型要一致
int getNum(){
  return 1;
}

void main() {
  printInfo();

  print(getNum());

  //匿名函数
  var myPrint = (value){
    print(value);
  };

  
  List fruits = ['苹果','香蕉','猕猴桃'];

  fruits.forEach(myPrint);


  //箭头函数
  fruits.forEach((element)=>{
    print(element) //箭头函数中不能写结束的分号
  });
  fruits.forEach((element)=>print(element));

  //立即执行函数
  ((int n){
    print(n);
  })(17);
}