import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_blog_own/config/theme/theme.dart';
import 'package:news_blog_own/core/utils/input_formatters/phone_number_formatter.dart';
import 'package:gap/gap.dart';
import 'package:news_blog_own/pages/services/widget/text_widget.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.labelText,
    this.prefix,
    this.suffix,
    this.isPrefix = false,
  });
  final Widget? prefix;
  final dynamic suffix;
  final String hintText;
  final String labelText;
  final bool isPrefix;

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();
    final theme = Theme.of(context);
    final appColor =
        theme.brightness == Brightness.dark ? DarkColor() : LightColor();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: theme.textTheme.bodySmall,
        ),
        const Gap(8),
        SizedBox(
          height: 48,
          child: TextFormField(
            controller: phoneController,
            inputFormatters: [PhoneNumberFormatter()],
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                suffixIcon: suffix,
                prefixIcon: isPrefix
                    ? Padding(
                        padding:
                            const EdgeInsetsDirectional.only(top: 8, start: 10),
                        child: prefix, //
                      )
                    : null,
                hintText: hintText),
          ),
        ),
      ],
    );
  }
}
