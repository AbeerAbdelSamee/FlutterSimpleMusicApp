import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:url_launcher/url_launcher.dart';

class SharingService {

  Future<bool> sendEmail(
      {@required List<String> emailReceivers,
      String body,
      String subject,
      List<String> emailCC,
      List<String> emailBCC,
      List<String> attachmentPaths}) async {
    final Email email = Email(
      body: body,
      subject: subject,
      recipients: emailReceivers,
      cc: emailCC,
      bcc: emailBCC,
      attachmentPaths: attachmentPaths,
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
      return true;
    } catch (error) {
      log(
        error.toString(),
        name: 'send email errot: ',
      );
      return false;
    }
  }

  sendSmsMessage({@required String phoneNumber}) {
    if (phoneNumber == null) return;

    launch(
      'sms:$phoneNumber',
    );
  }

  phoneCall({@required String phoneNumber}) {
    if (phoneNumber == null) return;

    launch(
      'tel:$phoneNumber',
    );
  }

  launchURL({@required String url}) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<String> shareToSystem({String msg})async{
    return await FlutterShareMe().shareToSystem(msg: msg);
  }

}
