extension StringExtension on String{
  //https://stackoverflow.com/a/60528001
 
 String capitalize() {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    }
}