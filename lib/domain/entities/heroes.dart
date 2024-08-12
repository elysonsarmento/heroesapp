import 'appearance.dart';
import 'biography.dart';
import 'connections.dart';
import 'images.dart';
import 'powerstats.dart';
import 'work.dart';

class Heroe {
  int? id;
  String? name;
  String? slug;
  Powerstats? powerstats;
  Appearance? appearance;
  Biography? biography;
  Work? work;
  Connections? connections;
  Images? images;

  Heroe({
    this.id,
    this.name,
    this.slug,
    this.powerstats,
    this.appearance,
    this.biography,
    this.work,
    this.connections,
    this.images,
  });
}
