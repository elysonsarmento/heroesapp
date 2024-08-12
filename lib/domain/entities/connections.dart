import '../../data/models/heroe.dart';

class Connections {
  String? groupAffiliation;
  String? relatives;

  Connections({
    this.groupAffiliation,
    this.relatives,
  });

  static ConnectionsModel? toModel(Connections? connections) {
    return ConnectionsModel(
      groupAffiliation: connections?.groupAffiliation,
      relatives: connections?.relatives,
    );
  }
}
