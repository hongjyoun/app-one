import 'package:app_one/constants/sizes.dart';
import 'package:app_one/enums/ability.dart';
import 'package:app_one/functions/navigator_on_push.dart';
import 'package:app_one/models/hero_status.dart';
import 'package:app_one/providers/providers.dart';
import 'package:app_one/screens/stories/story_801.dart';
import 'package:app_one/screens/stories/story_802.dart';
import 'package:app_one/screens/stories/story_991.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story702 extends ConsumerWidget {
  const Story702({super.key});

  void onTapButtonByCareer(BuildContext context, HeroStatus hero) {
    if (hero.ability == Ability.map) {
      navigatorOnPush(context, const Story801());
    } else if (hero.ability == Ability.chemical) {
      navigatorOnPush(context, const Story802());
    } else {
      navigatorOnPush(context, const Story991());
    }
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
                child: ListView(
                  children: [
                    Column(
                      children: [
                        ContentText(
                          text: "'또각 또각..'\n내 구두 소리에 위층에 있던 좀비들이 내려오고 있다.",
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: Sizes.size20),
                child: Column(
                  children: [
                    SelectTextButton(
                      text: "위로는 더 이상 올라갈 수가 없다.. 어떡하지?",
                      onTap: () => onTapButtonByCareer(context, hero),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
