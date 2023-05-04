import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../cubit/news_cubit.dart';
import '../../cubit/news_states.dart';
import '../../shared/components/componenets.dart';

class WebViewScreen extends StatelessWidget {

final String url ;

  const WebViewScreen({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      appBar: AppBar(),
      body:WebView(
        initialUrl: url,
      ),
    );
  }
}