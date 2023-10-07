import 'package:app_one/constants/sizes.dart';
import 'package:app_one/enums/ability.dart';
import 'package:app_one/enums/career.dart';
import 'package:app_one/functions/navigator_on_push.dart';
import 'package:app_one/models/hero_status.dart';
import 'package:app_one/providers/providers.dart';
import 'package:app_one/screens/stories/story_100.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartScreen extends ConsumerWidget {
  const StartScreen({super.key});

  String textByCareer(HeroStatus hero) {
    if (hero.career == Career.engineer) {
      return "오늘따라 유난히 건물에서 소리가 많이 나는 바람에\n";
    } else if (hero.career == Career.abroadSales) {
      return "오늘 해외바이어를 만나는 바람에\n";
    } else if (hero.career == Career.developer) {
      return "오늘뿐 아니라 항상 바쁘기 때문에\n";
    } else if (hero.career == Career.research) {
      return "이상한 바이러스가 많아 실험할게 많아진 요즘,\n";
    }
    return "";
  }

  String textByAbility(HeroStatus hero) {
    if (hero.ability == Ability.map) {
      return "건물구조파악";
    } else if (hero.ability == Ability.english) {
      return "영어";
    } else if (hero.ability == Ability.chemical) {
      return "화학물 제조능력";
    } else if (hero.ability == Ability.none) {
      return "없음";
    }
    return "";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HeroStatus hero = ref.watch(heroProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.all(Sizes.size20),
            child: Row(
              children: [
                RoundIconButton(
                  icon: FontAwesomeIcons.ghost,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.size20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContentText(
                      text: "당신의 직책은\n${hero.name}입니다",
                    ),
                    ContentText(
                      text: "${textByCareer(hero)}오늘도 야근이군요 🥲",
                      color: Colors.white,
                    ),
                    ContentText(
                      text: "능력치: ${textByAbility(hero)}",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: Sizes.size20),
                child: SelectTextButton(
                  text: "야근하러 가보기 >>",
                  onTap: () => navigatorOnPush(context, const Story100()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
