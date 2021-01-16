import 'package:flutter/material.dart';
import 'package:smart_duel_disk/packages/ui_components/lib/ui_components.dart';
import 'package:smart_duel_disk/src/localization/strings.al.dart';

import 'widgets/personal_decks.dart';
import 'widgets/pre_built_decks.dart';

class DeckScreen extends StatelessWidget {
  const DeckScreen();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.screenMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Section(
            title: Strings.deckPreBuiltDecksTitle.get(),
            child: const PreBuiltDecks(),
          ),
          const SizedBox(height: AppDimensions.deckSectionSeparator),
          _Section(
            title: Strings.deckPersonalDecksTitle.get(),
            child: const PersonalDecks(),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final Widget child;

  const _Section({
    @required this.title,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.deckSectionTitle,
        ),
        const SizedBox(height: AppDimensions.deckSectionTitleChildSeparator),
        child,
      ],
    );
  }
}
