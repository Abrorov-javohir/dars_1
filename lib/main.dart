import 'package:dars_1/ember_quest.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'overlays/overlays.dart';

void main() {
  runApp(
    GameWidget<EmberQuestGame>.controlled(
      gameFactory: EmberQuestGame.new,
      overlayBuilderMap: {
        'MainMenu': (_, game) => MainMenu(game: game),
        'GameOver': (_, game) => GameOver(game: game),
      },
      initialActiveOverlays: const ['MainMenu'],
    ),
  );
}
