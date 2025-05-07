class Rect{
  late num h;
  late num w;

  // 构造函数
  Rect(this.h,this.w);

  get getArea{
    return this.h * this.w;
  }

  set setHeight(int value){
    this.h = value;
  }
}

void main(List<String> args) {
  Rect r = new Rect(10, 4);
  print("面积：${r.getArea}");

  r.setHeight = 6;
  print("面积：${r.getArea}");

}