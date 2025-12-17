void main() {
  //
  print("프로그램 실행됨");
  Human h1 = Human('강훈', age: 20, gender: "Male", haircolor: "Black");
  Human h2 = Human(
    '이지',
    age: 20,
    gender: "Male",
    child: Human("상구", age: 9, gender: "Male"),
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
  Human(
    this.name, {
    required this.age,
    required this.gender,
    this.haircolor,
    this.child,
  });
}
