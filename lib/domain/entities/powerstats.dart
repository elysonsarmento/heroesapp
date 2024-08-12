import '../../data/models/heroe.dart';

class Powerstats {
  int? intelligence;
  int? strength;
  int? speed;
  int? durability;
  int? power;
  int? combat;

  Powerstats({
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  });

  static PowerstatsModel? toModel(Powerstats? powerstats) {
    return PowerstatsModel(
      intelligence: powerstats?.intelligence,
      strength: powerstats?.strength,
      speed: powerstats?.speed,
      durability: powerstats?.durability,
      power: powerstats?.power,
      combat: powerstats?.combat,
    );
  }
}
