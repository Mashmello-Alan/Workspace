/***
 * Dart判断数据类型
 * is关键字来进行判断类型，返回值为true或false。
 */

void main(){
  var str1 = '123';

  if(str1 is String){
    print("Is String Type");
  }else if (str1 is int){
    print("Is int Type");
  }else{
    print("Other Type");
  }


  var str2 = 123;
  if (str2 is String){
    print("str2 is String Type");
  }else if (str2 is int){
    print("str2 is Int Type");
  }else {
    print("Other type");
  }

}