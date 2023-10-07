import 'package:app_one/constants/gaps.dart';
import 'package:app_one/constants/sizes.dart';
import 'package:app_one/enums/ability.dart';
import 'package:app_one/enums/item.dart';
import 'package:app_one/functions/navigator_on_push.dart';
import 'package:app_one/models/hero_status.dart';
import 'package:app_one/providers/providers.dart';
import 'package:app_one/screens/stories/story_1003.dart';
import 'package:app_one/screens/stories/story_1004.dart';
import 'package:app_one/screens/stories/story_1991.dart';
import 'package:app_one/screens/stories/story_1992.dart';
import 'package:app_one/screens/stories/story_1994.dart';
import 'package:app_one/screens/stories/story_1995.dart';
import 'package:app_one/screens/stories/story_1996.dart';
import 'package:app_one/screens/stories/story_311.dart';
import 'package:app_one/screens/stories/story_312.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story212 extends ConsumerWidget {
  const Story212({super.key});

  void onTapButton(BuildContext context, HeroStatus hero, Item itemSelected) {
    if (hero.ability == Ability.english) {
      navigatorOnPush(context, const Story311());
      return;
    } else if (hero.ability == Ability.map) {
      navigatorOnPush(context, const Story312());
      return;
    }

    if (hero.item == Item.lighter) {
      switch (itemSelected) {
        case Item.hairSpray:
          navigatorOnPush(context, const Story1003());
          break;
        case Item.stick:
          navigatorOnPush(context, const Story1992());
          break;
        case Item.acid:
          navigatorOnPush(context, const Story1994());
          break;
        case Item.painkiller:
          navigatorOnPush(context, const Story1995());
          break;
        default:
          break;
      }
    } else if (hero.item == Item.rubberBoots) {
      switch (itemSelected) {
        case Item.hairSpray:
          navigatorOnPush(context, const Story1991());
          break;
        case Item.stick:
          navigatorOnPush(context, const Story1004());
          break;
        case Item.acid:
          navigatorOnPush(context, const Story1994());
          break;
        case Item.painkiller:
          navigatorOnPush(context, const Story1996());
          break;
        default:
          break;
      }
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
                          text: "여러 물건과 약품들이 보인다. 어떤걸 가져갈까?",
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
                      text: "헤어 스프레이",
                      onTap: () => onTapButton(context, hero, Item.hairSpray),
                    ),
                    Gaps.v20,
                    SelectTextButton(
                      text: "긴 막대기",
                      onTap: () => onTapButton(context, hero, Item.stick),
                    ),
                    Gaps.v20,
                    SelectTextButton(
                      text: "염산",
                      onTap: () => onTapButton(context, hero, Item.acid),
                    ),
                    Gaps.v20,
                    SelectTextButton(
                      text: "진통제",
                      onTap: () => onTapButton(context, hero, Item.painkiller),
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
