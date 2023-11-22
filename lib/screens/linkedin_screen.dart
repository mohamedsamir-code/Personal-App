import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LinkedInWebView extends StatefulWidget {
  const LinkedInWebView({super.key});

  static String id = 'LinkedIn Screen';

  @override
  _LinkedInWebViewState createState() => _LinkedInWebViewState();
}

class _LinkedInWebViewState extends State<LinkedInWebView> {
  final String url =
      'https://www.linkedin.com/in/mohamed-samir-95884819b'; // Replace with your website URL
  final WebViewController _controller = WebViewController();

  @override
  void initState() {
    super.initState();
    _controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith(url)) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _controller),
    );
  }
}
