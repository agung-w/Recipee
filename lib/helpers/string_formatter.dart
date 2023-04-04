String squish(String input) {
  return input.replaceAll(RegExp(r"(?<= ) {1,}(?! )"), "");
}
