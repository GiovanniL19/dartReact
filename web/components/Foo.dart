import 'package:over_react/over_react.dart';
import 'package:js/js.dart';
import '../lib/moment.dart';

@Factory()
UiFactory<ComponentProps> Foo;


@Props()
class ComponentProps extends UiProps {
 //We do not have props at the moment
}


@Component()
class FooComponent extends UiComponent<ComponentProps> {
 @override
 render() {

  return (
    Dom.div()..className = 'container')(
      Dom.h1()('Hello World!'),
      Dom.h3()('This is a H3 element'),

      (Dom.div()..className = 'container2')(
        Dom.h4()('This H4 element is inside class container2'),
        Dom.h2()('The date and time is: ' + moment().toString()),
      ),
    );
 }
}
