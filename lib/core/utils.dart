

extension StringExtensions on String {
  String get svg => 'assets/images/$this.svg';
  String get png => 'images/$this.png';
  String get jpg => 'assets/images/$this.jpg';
}