
void main(){
  Mundo hero1 = Mundo(100, 100)
  MsFortune hero2 = MsFortune(100, 200);

  hero1.voice()
}

void onUserHeroClick (Mundo mundo) {
  mundo.voice();

  void onUserHeroClick2(MsFortune fortune) {
  mundo.voice();
}
void on

class Unit {
  int hp;
  int mp;

  
  void voice(){}
  Unit(this.hp, this.mp);
}

class Mundo extends Unit {
  Mundo(super.hp, super.mp);
  
  void q(MsFortune m) {
    m.hp = m.hp - 10;
  }
  void q2(Yasuo y) {
    y.hp = y.hp-2;
  }
  
  class MsFortune extends Unit {
  MsFortune(super.hp, super.mp);
  
  void q(Mundo m) {
    m.hp = m.hp - 10;
  }
  void q2(Yasuo y) {
    y.hp = y.hp - 5;
  }
  

  void voice() {
    print("행운은 나의 것");
  }
}

class Yasuo extends Unit {
  Yasuo(super.hp, super.mp)
}