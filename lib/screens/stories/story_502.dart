import 'package:app_one/constants/gaps.dart';
import 'package:app_one/constants/sizes.dart';
import 'package:app_one/enums/item.dart';
import 'package:app_one/functions/navigator_on_push.dart';
import 'package:app_one/models/hero_status.dart';
import 'package:app_one/providers/providers.dart';
import 'package:app_one/screens/stories/story_601.dart';
import 'package:app_one/screens/widgets/alert_text.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story502 extends ConsumerWidget {
  const Story502({super.key});

  void onTapEarnItem(BuildContext context, WidgetRef ref) {
    ref.read(heroProvider.notifier).update((state) {
      return HeroStatus(
        name: state.name,
        career: state.career,
        ability: state.ability,
        item: Item.rubberBoots, // item 키만 변경
      );
    });

    navigatorOnPush(context, const Story601());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        // automaticallyImplyLeading: false,
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
                  children: [
                    ContentText(
                      text: "화장실로 간신히 숨었다.\n핸드폰으로 뉴스를 급히 확인해본다.",
                      color: Theme.of(context).primaryColor,
                    ),
                    Gaps.v20,
                    const AlertText(
                      text: "[좀비의 특성을 확인했습니다]",
                    ),
                    Gaps.v20,
                    ContentText(
                      text: "좀비가 소리에 예민하다고?",
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: Sizes.size20),
                child: Column(
                  children: [
                    SelectTextButton(
                      text: "소리가 나는 구두대신 고무장화로 갈아신는다",
                      onTap: () => onTapEarnItem(context, ref),
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
