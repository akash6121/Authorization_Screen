import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String? contentUrl, title;

  WebViewPage(this.contentUrl, this.title) {
    print('WebViewPage constructor called');
  }

  @override
  State<StatefulWidget> createState() {
    return WebViewPageState(contentUrl, title);
  }
}

class WebViewPageState extends State<WebViewPage> {
  late final WebViewController controller;
  final String? contentUrl, title;

  WebViewPageState(this.contentUrl, this.title);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted)..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: startLoading,
          onPageFinished: doneLoading,
        )
    )..loadRequest(Uri.parse(contentUrl!),);
  }

  // To show HTML Links separately on ios and Android

  // To show loader on webpages
  int position = 1;
  final key = UniqueKey();
  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A) {
    setState(() {
      position = 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: IndexedStack(
        index: position,
        children: [
          WebViewWidget(controller: controller,key: key,),
          Container(
            color: Colors.white,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
