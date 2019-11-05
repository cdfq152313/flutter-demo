import 'package:over_react/over_react.dart';

part 'square.over_react.g.dart';

@Factory()
UiFactory<SquareProps> Square = _$Square;

@Props()
class _$SquareProps extends UiProps {
  String value;
}

@Component()
class SquareComponent extends UiComponent<SquareProps> {
  @override
  Map getDefaultProps() => (newProps());

  @override
  render() {
    return (Dom.button()
      ..className = "square"
      ..onClick = (_) => props.onClick?.call(_))(
      props.value,
    );
  }
}
