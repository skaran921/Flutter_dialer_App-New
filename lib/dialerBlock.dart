import 'dart:async';

class DialerBlock {
  String _dialerScreenInput = "0";

  final _dialerScreenInputController = StreamController<String>();

  final _dialerScreeAddInputController = StreamController<String>();

  final _dialerScreenBackspaceController = StreamController<String>();

  // gettters for stream and sink

  Stream<String> get dialerScreenStream => _dialerScreenInputController.stream;

  StreamSink<String> get dialerScreenStreamSink =>
      _dialerScreenInputController.sink;

  StreamSink<String> get dialerScreeAddSink =>
      _dialerScreeAddInputController.sink;
  StreamSink<String> get dialerScreeBackspaceSink =>
      _dialerScreenBackspaceController.sink;

// constructor

  DialerBlock() {
    _dialerScreenInputController.add(_dialerScreenInput);
    _dialerScreeAddInputController.stream.listen(_addInInput);
    _dialerScreenBackspaceController.stream.listen(_backSpace);
  }

// core function

  _addInInput(String number) {
    _dialerScreenInput += number;
    dialerScreenStreamSink.add(_dialerScreenInput);
  }

  _backSpace(String number) {
    int len = number.length;
    if (len >= 1) {
      _dialerScreenInput = number.substring(0, len - 1);
      dialerScreenStreamSink.add(_dialerScreenInput);
    }
  }

//
  void dispose() {
    _dialerScreeAddInputController.close();
    _dialerScreenBackspaceController.close();
    _dialerScreenInputController.close();
  }
}
