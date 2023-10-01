import 'package:app_one/enums/ability.dart';
import 'package:app_one/enums/career.dart';
import 'package:app_one/enums/item.dart';

class HeroStatus {
  String? name;
  Career? career;
  Ability? ability;
  Item? item;

  HeroStatus({
    this.name,
    this.career,
    this.ability,
    this.item,
  });
}
