import 'package:app_one/enums/career.dart';
import 'package:app_one/enums/item.dart';
import 'package:app_one/models/hero_status.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final heroProvider = StateProvider<HeroStatus>(
    (ref) => HeroStatus("", Career.engineer, Item.lighter));
