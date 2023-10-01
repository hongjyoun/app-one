import 'package:app_one/models/hero_status.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final heroProvider = StateProvider<HeroStatus>(
  (ref) => HeroStatus(
    name: null,
    career: null,
    ability: null,
    item: null,
  ),
);
