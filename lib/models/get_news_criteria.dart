import 'package:news_app/constants.dart';
import 'package:news_app/models/country.dart';

class GetNewsCriteria {
  
  final Country country;
  final String? searchTerm;
  final String? category;

  const GetNewsCriteria({
    required this.country,
    required this.searchTerm,
    required this.category,
  });

  Map<String,dynamic> get toQueryParameters {
    return {
      "apiKey" : Constants.apiKey,
      "country": country.code,
      "category":category,
      "q":searchTerm,
    };
  }
}