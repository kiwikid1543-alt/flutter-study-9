void main() {
  //
  // 2는 고정
  // 곱해지는 수가 1씩 증가
  // print('2 * 1 = 2');
  // print('2 * 2 = 4');
  // print('2 * 3 = 6');
  // print('2 * 4 = 8');
  // print('2 * 5 = 10');
  // print('2 * 6 = 12');
  // print('2 * 7 = 14');
  // print('2 * 8 = 16');
  // print('2 * 9 = 18');

  for (int i = 2; i <= 9; i++) {
    mulTable(i);
  }

  mulTable(10);
}

/// 특정 단수의 구구단을 출력하는 함수!
///
/// [number] : 출력할 단 번호
void mulTable(int number) {
  // ==== 함수시작 ====
  for (int j = 1; j <= 9; j++) {
    print('$number * $j = ${number * j}');
  }
  // ==== 함수 끝 ====
}
