import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:yugacrew/common/const/colors.dart';
import 'package:yugacrew/common/const/messages.dart';
import 'package:yugacrew/common/const/sizes.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        width: 302.0,
        height: 158.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            const Text(
              CONTACTS+PHONE_NUMBER,
              style: TextStyle(fontSize: LARGE_FONT_SIZE,),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
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
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
