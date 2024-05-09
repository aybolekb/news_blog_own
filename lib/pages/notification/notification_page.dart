import 'package:flutter/material.dart';
import 'package:news_blog_own/core/widgets/app_background.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBackground(
      child: Center(
        child: Text('Notification Page'),
      ),
    );
  }
}
