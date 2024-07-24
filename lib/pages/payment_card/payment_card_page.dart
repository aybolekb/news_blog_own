import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_blog_own/config/extensions/navigation.dart';
import 'package:news_blog_own/config/theme/theme.dart';
import 'package:news_blog_own/core/utils/input_formatters/phone_number_formatter.dart';
import 'package:news_blog_own/core/widgets/app_background.dart';
import 'package:news_blog_own/core/widgets/app_bar.dart';
import 'package:news_blog_own/core/widgets/card_backrgound.dart';
import 'package:news_blog_own/core/widgets/primary_button.dart';
import 'package:news_blog_own/pages/payment_card/widgets/text_field_widget.dart';
import 'package:news_blog_own/pages/payment_card/widgets/your_balance.dart';

class PaymentCart extends StatelessWidget {
  const PaymentCart({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return AppBackground(
        child: ListView(
      children: [
        const AppBarCard(appBarTitle: 'TmCell'),
        const Gap(10),
        const YourBalance(),
        const Gap(10),
        CardBackground(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Töleg maglumatlary',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const Gap(24),
            Text(
              'Telefon belgisi',
              style: theme.textTheme.bodySmall,
            ),
            const Gap(8),
            SizedBox(
              height: 48,
              child: TextFormField(
                inputFormatters: [PhoneNumberFormatter()],
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.group_outlined),
                    prefixIcon: Padding(
                      padding:
                          const EdgeInsetsDirectional.only(top: 8, start: 10),
                      child: Text('+993 ', style: theme.textTheme.bodyLarge),
                    ),
                    hintText: 'xx xxxxxx'),
              ),
            ),
            const Gap(24),
            Text(
              'Mukdary',
              style: theme.textTheme.bodySmall,
            ),
            const Gap(8),
            SizedBox(
              height: 48,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(hintText: 'Meselem:10'),
              ),
            ),
            const Gap(24),
            Text(
              'Kart',
              style: theme.textTheme.bodySmall,
            ),
            const Gap(8),
            SizedBox(
              height: 48,
              child: TextFormField(
                inputFormatters: [PhoneNumberFormatter()],
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.keyboard_arrow_down),
                    prefixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(top: 8, start: 10),
                      child: Icon(Icons.card_travel),
                    ),
                    hintText: 'Kart saylanmady'),
              ),
            ),
            const Gap(24),
            PrimaryButton(
                text: 'Tassykla',
                onTap: () {
                  context.goBack();
                }),
            const Gap(24),
          ],
        )),
      ],
    ));
  }
}
