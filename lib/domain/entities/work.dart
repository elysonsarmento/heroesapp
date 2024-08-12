import '../../data/models/heroe.dart';

class Work {
  String? occupation;
  String? base;

  Work({
    this.occupation,
    this.base,
  });

  static WorkModel toModel(Work? work) {
    return WorkModel(
      occupation: work?.occupation,
      base: work?.base,
    );
  }
}
