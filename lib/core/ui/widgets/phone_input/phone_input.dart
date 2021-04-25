import 'package:ecommerce/core/responsive_screen/widgets/base_widget.dart';
import 'package:ecommerce/core/styles/global_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:international_phone_input/international_phone_input.dart';

class PhoneInputWidget extends StatefulWidget {
  final String title;
  final void Function(String, String, String) onPhoneNumberChange;
  PhoneInputWidget({this.title, this.onPhoneNumberChange});
  PhoneInputWidgetState createState() => PhoneInputWidgetState();
}

class PhoneInputWidgetState extends State<PhoneInputWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: BaseWidget.fromWidth(95),
      padding: GlobalStyles.calculateAppPadding(BaseWidget.fromWidth(5)),
      child: InternationalPhoneInput(
        enabledCountries: ['+966', '+20'],
        labelText: widget.title,
        onPhoneNumberChange: widget.onPhoneNumberChange,
      ),
    );
  }
}
