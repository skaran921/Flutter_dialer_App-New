import 'package:flutter/material.dart';
import './dialerBlock.dart';
import 'package:intent/intent.dart' as prefix;
import 'package:intent/action.dart' as prefixA;

import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _buttonBackGroundColor = CupertinoColors.extraLightBackgroundGray;
  final _dialorBlock = DialerBlock();

  callTo(String mobileNo) {
    prefix.Intent()
      ..setAction(prefixA.Action.ACTION_CALL)
      ..setData(Uri(scheme: 'tel', path: '${mobileNo}'))
      ..startActivity().catchError((e) => print(e));
  }

  @override
  void dispose() {
    _dialorBlock.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 40.0),
          child: StreamBuilder<String>(
              stream: _dialorBlock.dialerScreenStream,
              builder: (context, snapshot) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: <Widget>[
                          Form(
                            child: TextFormField(
                              controller:
                                  TextEditingController(text: snapshot.data),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                              enabled: false,
                            ),
                          ),
                          Positioned(
                              right: 1.0,
                              child: IconButton(
                                  onPressed: () {
                                    _dialorBlock.dialerScreeBackspaceSink
                                        .add(snapshot.data);
                                  },
                                  icon: Icon(
                                    Icons.backspace,
                                    color: CupertinoColors.activeBlue,
                                    size: 28.0,
                                  )))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("1");
                          },
                          heroTag: "one",
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("2");
                          },
                          heroTag: "two",
                          isExtended: true,
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("3");
                          },
                          heroTag: "three",
                          child: Text(
                            "3",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("4");
                          },
                          heroTag: "four",
                          child: Text(
                            "4",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("5");
                          },
                          heroTag: "five",
                          isExtended: true,
                          child: Text(
                            "5",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("6");
                          },
                          heroTag: "six",
                          child: Text(
                            "6",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        )
                      ],
                    ),
                    // row2 end
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("7");
                          },
                          heroTag: "seven",
                          child: Text(
                            "7",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("8");
                          },
                          heroTag: "eight",
                          isExtended: true,
                          child: Text(
                            "8",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("9");
                          },
                          heroTag: "nine",
                          child: Text(
                            "9",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        )
                      ],
                    ),
                    // row2 end
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("*");
                          },
                          heroTag: "start",
                          child: Text(
                            "*",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("0");
                          },
                          heroTag: "zero",
                          isExtended: true,
                          child: Text(
                            "0",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            _dialorBlock.dialerScreeAddSink.add("#");
                          },
                          heroTag: "hash",
                          child: Text(
                            "#",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: CupertinoColors.inactiveGray),
                          ),
                          elevation: 4,
                          backgroundColor: _buttonBackGroundColor,
                        )
                      ],
                    ),
                    // row 4
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          elevation: 10.0,
                          onPressed: () {
                            callTo(snapshot.data);
                          },
                          backgroundColor: CupertinoColors.activeGreen,
                          child: Icon(
                            CupertinoIcons.phone_solid,
                            size: 35.0,
                          ),
                        )
                      ],
                    )
                    // row3 end
                  ],
                );
              }),
        ),
      ),
    );
  }
}
