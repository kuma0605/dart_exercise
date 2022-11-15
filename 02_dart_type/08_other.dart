void main(List<String> args) {
  var str='😀';
  print(str);
  print(str.length); //utf-16, dart编码格式
  print(str.runes.length);

  //Runes 可以将 UTF-32字符集表示的内容转换成符号
  Runes input  = new Runes('\u{1f680}');
  print(new String.fromCharCodes(input));
  print(input);

  //symbol
  var a  = #abc;
  print(a);

}