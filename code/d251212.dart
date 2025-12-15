import 'dart:io';
import 'd251211.dart';

class Score {
  // 1. 속성 : 점수(숫자)
  int point;
  // 2. 메서드 : 점수(속성 중 하나)를 출력하는 기능
  // 반환타입 함수이름 (매개변수) {실행할 코드}
  void showInfo() {
    print("점수: $point");
  }

  // 3. 생성자 : 점수를 초기화
  Score(this.point);
}

class StudentScore extends Score {
  // Score 클래스의 구성요소가 포함됨
  // 📌 상속은 반드시 하나의 클래스만 가능!
  // 현재 속성 : point, 메서드 : showInfo 가지고 있음!
  String name;

  // @override => 어노테이션 => 코드의 메타데이터 => 안붙여도 문제 없음 => 재정의 했다는 것을 다른 개발자에게, 혹은 자신에세 보기 편하게 하려고 강력히 사용 권장!
  @override
  void showInfo() {
    print("이름 : $name, 점수 : $point");
  }

  // 생성자
  StudentScore(this.name, super.point);
}

void main() async {
  // 1. 파일객체 생성
  File txt = File("students.txt");
  // 2. 문자열로 불러오기
  // txt.readAsStringSync(); // Flutter 사용 x. 애니메이션 있을 때 끊김.
  //TODO 심화에서 한번 더 다루기
  String txtString = await txt.readAsString();
  // 홍길동,90
  // 김철수,80
  // 1. 개행단위로 구분
  // ["홍길동,90", "김철수,80"]
  final joolDeul = txtString.split('/n');
  // 2. 각줄마다 콤마단위로 구분
  // for in 문 => 우측의 리스트를 좌측의 변수에 한씩 담는다.
  List<StudentScore> haksangdeul = [];
  for (String jool in joolDeul) {
    // ["홍길동", "90"]
    // ["김철수", "80"]
    final jinjaBunli = jool.split(',');
    final erum = jinjaBunli[0];
    final jeumsu = jinjaBunli[1];
    final sutjajeumsu = int.parse(jeumsu);
    final studentScore = StudentScore(erum, sutjajeumsu);
    haksangdeul.add(studentScore);
  }
  print("어떤 학생의 점수 확인?");
  String sayougJaIpRuk = stdin.readLineSync()!;
  // haksangdeul 이라는 리스트에 담긴 학생 이름과 sayougJaIpRuk이라는 입력값과 비교
  // 있는지 확인
  // haksangdeul : [StudentScore("홍길동,90"), StudentScore("김철수,80")]
  StudentScore? chatneunHaksang = null;

  for (StudentScore haksang in haksangdeul) {
    if (sayougJaIpRuk == haksang.name) {
      chatneunHaksang = haksang;
      break;
    }
  }
  if (chatneunHaksang == null) {
    print("잘못되어");
  } else {
    print("이름: ${chatneunHaksang.name}, 점수: ${chatneunHaksang.point}");
  }
}
