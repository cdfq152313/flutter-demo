import 'package:over_react/over_react.dart';
import 'package:velodash_web/src/component/board.dart';
import 'package:velodash_web/src/component/board_2.dart';

part 'game.over_react.g.dart';

@Factory()
UiFactory<GameProps> Game = _$Game;

@Props()
class _$GameProps extends UiProps {}

@Component()
class GameComponent extends UiComponent<GameProps> {
  @override
  Map getDefaultProps() => (newProps());

  @override
  render() {
    return (Dom.div()..className = ("Game"))(
      (Dom.div()..className = "game-board")(Board2()()),
      (Dom.div()..className = "game-info")(
        Dom.div()(),
        Dom.ol()(),
      ),
    );
  }
}
