import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GithubWebView extends StatefulWidget {
  const GithubWebView({super.key});

  static String id = 'Github Screen';

  @override
  _GithubWebViewState createState() => _GithubWebViewState();
}

class _GithubWebViewState extends State<GithubWebView> {
  final String url =
      'https://github.com/mohamedsamir-code'; // Replace with your website URL
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
