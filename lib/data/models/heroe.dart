import 'dart:convert';

import '../../domain/entities/entities.dart';

HeroeModel heroeFromJson(String str) => HeroeModel.fromJson(json.decode(str));

String heroeToJson(HeroeModel data) => json.encode(data.toJson());

class HeroeModel extends Heroe {
  int? id;
  String? name;
  String? slug;
  Powerstats? powerstats;
  Appearance? appearance;
  Biography? biography;
  Work? work;
  Connections? connections;
  Images? images;

  HeroeModel({
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

  factory HeroeModel.fromJson(Map<String, dynamic> json) => HeroeModel(
        id: json['id'],
        name: json['name'],
        slug: json['slug'],
        powerstats: json['powerstats'] == null
            ? null
            : PowerstatsModel.fromJson(json['powerstats']),
        appearance: json['appearance'] == null
            ? null
            : AppearanceModel.fromJson(json['appearance']),
        biography: json['biography'] == null
            ? null
            : BiographyModel.fromJson(json['biography']),
        work: json['work'] == null ? null : WorkModel.fromJson(json['work']),
        connections: json['connections'] == null
            ? null
            : ConnectionsModel.fromJson(json['connections']),
        images: json['images'] == null
            ? null
            : ImagesModel.fromJson(json['images']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
        'powerstats': Powerstats.toModel(powerstats)?.toJson(),
        'appearance': Appearance.toModel(appearance)?.toJson(),
        'biography': Biography.toModel(biography)?.toJson(),
        'work': Work.toModel(work).toJson(),
        'connections': Connections.toModel(connections)?.toJson(),
        'images': Images.toModel(images)?.toJson(),
      };
}

class AppearanceModel extends Appearance {
  String? gender;
  String? race;
  List<String>? height;
  List<String>? weight;
  String? eyeColor;
  String? hairColor;

  AppearanceModel({
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  });

  factory AppearanceModel.fromJson(Map<String, dynamic> json) =>
      AppearanceModel(
        gender: json['gender'],
        race: json['race'],
        height: json['height'] == null
            ? []
            : List<String>.from(json['height']!.map((x) => x)),
        weight: json['weight'] == null
            ? []
            : List<String>.from(json['weight']!.map((x) => x)),
        eyeColor: json['eyeColor'],
        hairColor: json['hairColor'],
      );

  Map<String, dynamic> toJson() => {
        'gender': gender,
        'race': race,
        'height':
            height == null ? [] : List<dynamic>.from(height!.map((x) => x)),
        'weight':
            weight == null ? [] : List<dynamic>.from(weight!.map((x) => x)),
        'eyeColor': eyeColor,
        'hairColor': hairColor,
      };
}

class BiographyModel extends Biography {
  String? fullName;
  String? alterEgos;
  List<String>? aliases;
  String? placeOfBirth;
  String? firstAppearance;
  String? publisher;
  String? alignment;

  BiographyModel({
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  factory BiographyModel.fromJson(Map<String, dynamic> json) => BiographyModel(
        fullName: json['fullName'],
        alterEgos: json['alterEgos'],
        aliases: json['aliases'] == null
            ? []
            : List<String>.from(json['aliases']!.map((x) => x)),
        placeOfBirth: json['placeOfBirth'],
        firstAppearance: json['firstAppearance'],
        publisher: json['publisher'],
        alignment: json['alignment'],
      );

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'alterEgos': alterEgos,
        'aliases':
            aliases == null ? [] : List<dynamic>.from(aliases!.map((x) => x)),
        'placeOfBirth': placeOfBirth,
        'firstAppearance': firstAppearance,
        'publisher': publisher,
        'alignment': alignment,
      };
}

class ConnectionsModel extends Connections {
  String? groupAffiliation;
  String? relatives;

  ConnectionsModel({
    this.groupAffiliation,
    this.relatives,
  });

  factory ConnectionsModel.fromJson(Map<String, dynamic> json) =>
      ConnectionsModel(
        groupAffiliation: json['groupAffiliation'],
        relatives: json['relatives'],
      );

  Map<String, dynamic> toJson() => {
        'groupAffiliation': groupAffiliation,
        'relatives': relatives,
      };
}

class ImagesModel extends Images {
  String? xs;
  String? sm;
  String? md;
  String? lg;

  ImagesModel({
    this.xs,
    this.sm,
    this.md,
    this.lg,
  });

  factory ImagesModel.fromJson(Map<String, dynamic> json) => ImagesModel(
        xs: json['xs'],
        sm: json['sm'],
        md: json['md'],
        lg: json['lg'],
      );

  Map<String, dynamic> toJson() => {
        'xs': xs,
        'sm': sm,
        'md': md,
        'lg': lg,
      };
}

class PowerstatsModel extends Powerstats {
  int? intelligence;
  int? strength;
  int? speed;
  int? durability;
  int? power;
  int? combat;

  PowerstatsModel({
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  });

  factory PowerstatsModel.fromJson(Map<String, dynamic> json) =>
      PowerstatsModel(
        intelligence: json['intelligence'],
        strength: json['strength'],
        speed: json['speed'],
        durability: json['durability'],
        power: json['power'],
        combat: json['combat'],
      );

  Map<String, dynamic> toJson() => {
        'intelligence': intelligence,
        'strength': strength,
        'speed': speed,
        'durability': durability,
        'power': power,
        'combat': combat,
      };
}

class WorkModel extends Work {
  String? occupation;
  String? base;

  WorkModel({
    this.occupation,
    this.base,
  });

  factory WorkModel.fromJson(Map<String, dynamic> json) => WorkModel(
        occupation: json['occupation'],
        base: json['base'],
      );

  Map<String, dynamic> toJson() => {
        'occupation': occupation,
        'base': base,
      };
}
