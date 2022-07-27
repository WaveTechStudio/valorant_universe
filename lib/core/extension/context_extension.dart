import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;
}

extension NumberExtension on BuildContext {
  double get lowValue => dynamicHeight(0.01);
  double get mediumValue => dynamicHeight(0.02);
  double get highValue => dynamicHeight(0.03);
  double get veryHighValue => dynamicHeight(0.06);
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingAllLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingAllDefault => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingAllHigh => EdgeInsets.all(highValue);

  EdgeInsets get paddingHorizontalLow => EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingHorizontalDefault => EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHorizontalHigh => EdgeInsets.symmetric(horizontal: highValue);

  EdgeInsets get paddingVerticalLow => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingVerticalDefault => EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingVerticalHigh => EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get paddingRightLow => EdgeInsets.only(right: lowValue);
  EdgeInsets get paddingRightDefault => EdgeInsets.only(right: mediumValue);
  EdgeInsets get paddingRightHigh => EdgeInsets.only(right: highValue);
}

extension DurationExtension on BuildContext {
  Duration get durationLow => const Duration(milliseconds: 250);
  Duration get durationDefault => const Duration(milliseconds: 500);
  Duration get durationHigh => const Duration(milliseconds: 1000);
}
