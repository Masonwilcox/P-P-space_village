abstract class GameObject {

  int size;
  PVector location;
  int lives;
  PVector velocity;
  PVector velomax;
  PVector direction;

  GameObject() {
  }

  void show() {
  }
  void act() {
  }
  boolean alive() {

    return true;
  }
}
