import '../../data/models/heroe.dart';

class Appearance {
  String? gender;
  String? race;
  List<String>? height;
  List<String>? weight;
  String? eyeColor;
  String? hairColor;

  Appearance({
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  });

  static AppearanceModel? toModel(Appearance? appearance) {
    return AppearanceModel(
      eyeColor: appearance?.eyeColor,
      gender: appearance?.gender,
      hairColor: appearance?.hairColor,
      height: appearance?.height,
      race: appearance?.race,
      weight: appearance?.weight,
    );
  }
}
