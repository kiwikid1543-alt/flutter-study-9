//별 피라미드 출력하기
void main() {
  //       *
  //      ***
  //     *****
  //    *******
  //   *********
  //  ***********
  // *************
  // int star = 1;
  // print('       ${'*' * star}');
  // star = star + 2;
  // print('       ${'*' * star}');
  // star = star + 2;
  // print('       ${'*' * star}');

  int star = 1;
  for (var i = 0; i < 7; i++) {
    star = star + 2;
    String space = ' ' * (7 - i);
    print(space + "*" * star);
  }

  // for (var i = 0; i < 7; i++) {
  //   int star = 1 + i * 2;
  //   print('         ${"*" * star}');
  // }
  //

  // print(star);
  // 공백 0 별 13
  // 공백 1 별 11

  for (var i = 0; i < 7; i++) {
    int spaceCount = i + 1;
    star = star - 2; // star => 12
    // print("공백: $spaceCount 현재별개수: $star");
    print(' ' * spaceCount + '*' * star);
  }
}
