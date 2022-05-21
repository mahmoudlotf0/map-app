class RegisterViewModel {
  final String title = 'What is your phone number';
  final String subTitle =
      'Please enter your phone number to verify your account.';
  final String codePhone = ' +20';
  final String validStringIsEmpty = 'please enter your number';
  final String validStringIsShort = 'Too short for a phone number!';
  final String buttonName = 'Next';
  late String phoneNumber;

  String generateCountryFlag() {
    String countryCode = 'eg';
    String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
    return flag;
  }
}
