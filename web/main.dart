import 'dart:html';
import 'package:react/react_dom.dart' as react_dom;
import 'package:over_react/over_react.dart';
import 'components/Foo.dart';

main() {
  // Initialize React within our Dart app
  setClientConfiguration();

  // Mount / render your component.
  react_dom.render(Foo()(), querySelector('#react_mount_point'));
}    