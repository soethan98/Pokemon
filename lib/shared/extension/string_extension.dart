extension StringExtension on String {
  //https://stackoverflow.com/a/60528001

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension IntExtension on int {
  String convertToUnit() {
    return '${(this * 100) / 1000}';
  }
}
