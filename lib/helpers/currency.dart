import 'package:easy_localization/easy_localization.dart';

class Currency {
  String toIDR(double value) {
    final rupiah =
        NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0);
    String formated = rupiah.format(value);
    return formated;
  }

  num toNum(String value) =>
      num.tryParse(value.replaceAll(RegExp(r'[Rp ,Rp,-.]'), '')) ?? 0;
}
