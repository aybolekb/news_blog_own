import 'package:flutter/material.dart';
import 'package:news_blog_own/pages/language_selector_page/language_selector_page.dart';

extension Navigation on BuildContext {
  void push(Widget screen) {
    Navigator.of(this).push(MaterialPageRoute(builder: (context) => screen));
  }

  void pushAndRemoveUntil(Widget screen) {
    Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => false);
  }

  openLanguageSelectorPage() {
    push(const LanguageSelectorPage());
  }
}
