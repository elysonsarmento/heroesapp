import '../../data/models/heroe.dart';

class Biography {
  String? fullName;
  String? alterEgos;
  List<String>? aliases;
  String? placeOfBirth;
  String? firstAppearance;
  String? publisher;
  String? alignment;

  Biography({
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  static BiographyModel? toModel(Biography? biographyModel) {
    return BiographyModel(
      fullName: biographyModel?.fullName,
      alterEgos: biographyModel?.alterEgos,
      aliases: biographyModel?.aliases,
      placeOfBirth: biographyModel?.placeOfBirth,
      firstAppearance: biographyModel?.firstAppearance,
      publisher: biographyModel?.publisher,
      alignment: biographyModel?.alignment,
    );
  }
}
