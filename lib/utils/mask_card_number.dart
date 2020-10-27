class MaskCardNumber {

  static String maskCardNumber(String cardNumber) {

    String maskedNumber = '';
    for(int i=0; i<3; i++) {
      maskedNumber = maskedNumber + '****  ';
    }
    maskedNumber = maskedNumber + cardNumber.substring(12);
    return maskedNumber.toString();
  }

}
