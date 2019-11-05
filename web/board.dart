import 'package:over_react/over_react.dart';
import 'package:velodash_web/src/component/square.dart';

part 'board.over_react.g.dart';

@Factory()
UiFactory<BoardProps> Board = _$Board;

@Props()
class _$BoardProps extends UiProps {}

@State()
class _$BoardState extends UiState {
  List<String> squares;
}

@Component()
class BoardComponent<T extends BoardProps, S extends BoardState> extends UiStatefulComponent<T, S> {
  @override
  Map getDefaultProps() {
    return newProps();
  }

  @override
  Map getInitialState() {
    return newState()..squares = List.generate(9, (_) => "_");
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
    return (Square()
      ..value = state.squares[i]
      ..onClick = (_) => handleClick(i))();
  }

  handleClick(int i) {
    state.squares[i] = 'X';
    this.setState(newState()..squares = state.squares);
  }
}
