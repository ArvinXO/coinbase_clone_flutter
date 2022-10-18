import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// import '../util/theme.dart';

class SendReceiveBar extends StatefulWidget {
  const SendReceiveBar({Key? key}) : super(key: key);
  @override
  State<SendReceiveBar> createState() => _SendReceiveBarState();
}

class _SendReceiveBarState extends State<SendReceiveBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *
          (MediaQuery.of(context).orientation == Orientation.portrait
              ? 1
              : 0.7),
      height: MediaQuery.of(context).size.height *
          (MediaQuery.of(context).orientation == Orientation.portrait
              ? 0.09
              : 0.4),
      color: Colors.black.withOpacity(0.96),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //Receive and Send buttons
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  kDebugMode ? print("Receive button clicked") : null;
                },
                child: const Material(
                  elevation: 0,
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(46))),
                  child: Center(
                    child: Text(
                      'Receive',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  kDebugMode ? print("Send button clicked") : null;
                },
                child: const Material(
                  color: Colors.blue,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(46))),
                  child: Center(
                    child: Text(
                      'Send',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
