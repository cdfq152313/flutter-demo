import 'package:over_react/over_react.dart';
import 'package:velodash_web/src/component/board_2_store.dart';
import 'package:velodash_web/src/component/square.dart';
import 'package:velodash_web/src/mobx/observer.dart';

part 'board_2.over_react.g.dart';

@Factory()
UiFactory<Board2Props> Board2 = _$Board2;

@Props()
class _$Board2Props extends UiProps {}

@State()
class _$Board2State extends UiState {
  Board2Store store;
}

@Component()
class Board2Component<T extends Board2Props, S extends Board2State> extends UiStatefulComponent<T, S> {
  @override
  Map getDefaultProps() {
    return newProps();
  }

  @override
  Map getInitialState() {
    print("getInitialState");
    return newState()..store = Board2Store();
  }

  @override
  render() {
    final status = "Next player: X";
    return Dom.div()(
      (Dom.div()..className = "status")(
        status,
      ),
      (Dom.div()..className = "board-row")(
        renderSquare(0),
        renderSquare(1),
        renderSquare(2),
      ),
      (Dom.div()..className = "board-row")(
        renderSquare(3),
        renderSquare(4),
        renderSquare(5),
      ),
      (Dom.div()..className = "board-row")(
        renderSquare(6),
        renderSquare(7),
        renderSquare(8),
      ),
    );
  }

  renderSquare(i) {
    return observer(builder: () {
      return (Square()
        ..value = state.store.squares[i]
        ..onClick = (_) => handleClick(i))();
    });
  }

  handleClick(int i) {
    state.store.squares[i] = 'X';
  }
}
