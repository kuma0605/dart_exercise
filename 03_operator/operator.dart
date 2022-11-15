void main() {
  //地板除 
  print(7~/4);

  // 类型判断运算符
  List list = [];
  if(list is List){
    print('list is List');
  }else{
    print('list is not List');
  }

  if(list is! List){
    print('list is not List');
  }else{
    print('list is List');
  }

  //避空运算符
  print(1 ?? 3); //返回1
  print(null ?? 12); //返回12

  var foo;
  print(foo ?? 0);

  var a;
  /* if(a==null){
    a=3;
  } */
  a??=3;
  print(a);
  a??=6;
  print(a);

  //条件属性运算符
  var m = new Map();
  print(m.length);

  var obj;
  // print(obj.length);//The getter 'length' was called on null.
  print(obj?.length);//null

  //级联运算符
  Set s = new Set();
  /* s.add(1);
  s.add(2);
  s.add(3);
  s.remove(2); */
  s..add(1)..add(2)..add(3)..remove(2);
  print(s);
}