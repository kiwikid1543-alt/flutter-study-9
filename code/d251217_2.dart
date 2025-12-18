void main() {
  //
  print("프로그램 실행됨");
  // Human h1 = Human(
  //   '강훈',
  //   age: 20,
  //   gender: "Male",
  //   haircolor: "Black",
  //   skinColor: "WHITE",
  // );
  Human h1 = Human.whiteSkin('강성훈', age: 20, gender: "male");
  Human h2 = Human.blackSkin(
    '이지원',
    age: 20,
    gender: "male",
    child: Human.yellowSkin("상구", age: 9, gender: "male"),
  );
}

// 생성자
// 객체의 속성을 초기화하는 특별한 함수
// 함수 => 네임드파라미터, 위치파라미터 사용 가능!

class Human {
  // 클래스의 구성요소 : 속성, 메서드, 생성자
  String name;
  int age;
  String gender;
  String? haircolor;
  Human? child;
  String skinColor;
  Human(
    this.name, {
    required this.age,
    required this.gender,
    this.haircolor,
    this.child,
    required this.skinColor,
  });
  // 네임드 생성자
  // 객체를 생성하면서 특정한 값을 할당하거나 특정한 기능을 수행하게 하고 싶을 때 사용
  // 특정한 역할을 한다는걸 객체 생성할때 알기 쉽게 하기위해서
  // 생성자에 이름을 붙일 수 있음!
  Human.blackSkin(
    this.name, {
    required this.age,
    required this.gender,
    this.haircolor,
    this.child,
  }) : this.skinColor = "Black";
  Human.whiteSkin(  
    this.name, {
    required this.age,
    required this.gender,
    this.haircolor,
    this.child,
  }) : this.skinColor = "White";
  Human.yellowSkin(
    this.name, {
    required this.age,
    required this.gender,
    this.haircolor,
    this.child,
  }) : this.skinColor = "Yellow";
}
