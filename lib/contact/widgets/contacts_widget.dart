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
      content: SizedBox(
        width: 302.0,
        height: 158.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            const Text(
              Messages.CONTACTS + Messages.PHONE_NUMBER,
              style: TextStyle(
                fontSize: Sizes.LARGE_FONT_SIZE,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: AppColors.LIGHT_GRAY,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            5.0,
                          ),
                        ),
                      ),
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
                  child: GestureDetector(
                    onTap: () async {
                      FlutterPhoneDirectCaller.callNumber(Messages.PHONE_NUMBER);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: AppColors.GREEN,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(
                            5.0,
                          ),
                        ),
                      ),
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
