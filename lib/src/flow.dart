import 'package:spirobank/src/messages/flow.pb.dart' as messages;

class Flow {
  final messages.Flow _flowMessage;

  double get value => _flowMessage.value;
  bool get isFirstValue => _flowMessage.isFirstPackage;

  Flow(this._flowMessage);
}
