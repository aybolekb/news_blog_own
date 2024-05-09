import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;

    // If the new text length is greater than 14 (including country code and space), return the old value.
    if (newText.length > 9) {
      return oldValue;
    }

    var text = newText;
    if (text.length == 3 && text.substring(2) != ' ') {
      text = '${text.substring(0, 2)} ${text.substring(2)}';
    }
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
