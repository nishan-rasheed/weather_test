
import 'package:intl/intl.dart';



class DateMethods {

  static String formatDate(String value){

  DateTime date = DateTime.parse(value);
      
   String formattedDate = DateFormat('EEEE, d MMMM y').format(date);

   return formattedDate;

 }
}