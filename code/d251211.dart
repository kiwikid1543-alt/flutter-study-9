import 'dart:io';

void main() async {
  // 파일 불러와서 "00님의 성적은 00입니다" 형태로 출력
  // 1. 파일 불러오기
  // 절대경로 vs 상대경로
  // 절대경로 : 루트 (윈도우에서는 c드라이브)에서부터 파일 위치까지 총 경로
  // ../
  // 상대경로 : 현재위치에서의 경로. 현재경로 ->
  File txtFile = File('students.txt');
  String content = await txtFile.readAsString();

  // 2. 첫번쨰줄 불러오기
  // split 함수
  //  - String 클래스가 가지고 있는 메서드
  //  - 인자로 넘겨준 문자열을 기준으로 분리해서 List로 만들어줌
  // lines : ["홍길동,90", "김철수,80", "지은성,100"...]
  List<String> lines = content.split('\n');
  List<String> nameList = [];
  List<int> scoreList = [];
  // print(lines[0]);
  for (String nameAndScore in lines) {
    // String gildong = lines[0];
    // 3. 이름과 점수 구분짓기
    // nameAndScoreList : ["홍길동","90"]
    List<String> nameAndScoreList = nameAndScore.split(',');
    String name = nameAndScoreList[0];
    // int.parse => 숫자가 들어가있는 문자열을 숫자형태(int)로 바꿔줌
    // "ABC"라는 문자열을 파싱해서 에러났을 때 null이 반환되는데, null일 땐 0을 abc라는 변수에 넣어라!
    // int abc = int.tryParse("ABC") ?? 0;
    int score = int.tryParse(nameAndScoreList[1]) ?? 0;
    nameList.add(name);
    scoreList.add(score);

    print(name);
    print(score);
  }
  // 이름과 점수가 각각 다른리스트에서 관리된다면
  // 만약 점수리스트에서 값이 제거된다면
  // 이름리스트와 점수리스트 내 index들이 맞지 않음!
  print(nameList);
  print(scoreList);
  scoreList.removeAt(0);
  nameList[2];
  scoreList[2];
}
