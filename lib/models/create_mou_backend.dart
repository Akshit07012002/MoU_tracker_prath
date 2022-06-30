class CreationDetails {
  static Map<String, String> quantities = {};

  static void mapping(String text, String itemId) {
    quantities[itemId] = text;
    print("quantities:");
    print(quantities);
  }
}
