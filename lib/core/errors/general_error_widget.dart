import 'package:ecommerce/core/errors/error_helper.dart';
import 'package:ecommerce/core/errors/unauthorized_error.dart';
import 'package:ecommerce/core/responsive_screen/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class GeneralErrorWidget extends StatefulWidget {
  final VoidCallback callback;
  final Widget body;
  final error;
  final String message;

  const GeneralErrorWidget({
    Key key,
    this.callback,
    this.message,
    this.body,
    this.error,
  }) : super(key: key);

  @override
  _GeneralErrorWidgetState createState() => _GeneralErrorWidgetState();
}

class _GeneralErrorWidgetState extends State<GeneralErrorWidget> {
  final errorHelper = ErrorHelper();

  @override
  void initState() {
    if (this.widget.error is UnauthorizedError) {
      /// TODO : Handle UnauthorizedError (toWorkOn)
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          this.widget.body ?? Container(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              this.widget.message ??
                  errorHelper.getErrorMessage(this.widget.error),
            ),
          ),
          RaisedButton(
            onPressed: this.widget.callback,
            elevation: 1.0,
            child: Text(
              'Retry',
              style: TextStyle(
                  fontSize: ScreensHelper.scaleText(34),
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
