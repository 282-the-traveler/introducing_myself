import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/messages.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Container(
        width: 302.0,
        height: 158.0,
        child: Column(
          children: [
            const Text(
              CONTACTS+PHONE_NUMBER,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: LIGHT_GRAY,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        5.0,
                      ),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text(
                      '닫기',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: GREEN,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        5.0,
                      ),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      FlutterPhoneDirectCaller.callNumber(PHONE_NUMBER);
                    },
                    child: const Text(
                      '연락하기',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
