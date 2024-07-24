import 'package:flutter/material.dart';
import 'package:news_blog_own/pages/all_services/all_services_page.dart';
import 'package:news_blog_own/pages/language_selector_page/language_selector_page.dart';
import 'package:news_blog_own/pages/payment_card/payment_card_page.dart';

extension Navigation on BuildContext {
  void push(Widget screen) {
    Navigator.of(this).push(MaterialPageRoute(builder: (context) => screen));
  }

  void pushAndRemoveUntil(Widget screen) {
    Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => false);
  }

  goBack() {
    if (Navigator.canPop(this)) {
      Navigator.pop(this);
    }
  }

  openLanguageSelectorPage() {
    push(const LanguageSelectorPage());
  }

  openPaymentCard() {
    push(const PaymentCart());
  }

  openAllServicesPage() {
    push(const AllServicesPage());
  }
}
