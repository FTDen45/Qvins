import 'package:country_pickers/countries.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/widgets.dart';

class CountryPickerUtils2 {
  static Country getCountryByIso3Code(String iso3Code) {
    try {
      return countryList.firstWhere(
        (country) => country.iso3Code.toLowerCase() == iso3Code.toLowerCase(),
      );
    } catch (error) {
      throw Exception(
          "The initialValue provided is not a supported iso 3 code!");
    }
  }

  static Country getCountryByIsoCode(String isoCode) {
    try {
      return countryList.firstWhere(
        (country) => country.isoCode.toLowerCase() == isoCode.toLowerCase(),
      );
    } catch (error) {
      throw Exception("The initialValue provided is not a supported iso code!");
    }
  }

  static Country getCountryByName(String name) {
    try {
      return countryList.firstWhere(
        (country) => country.name.toLowerCase() == name.toLowerCase(),
      );
    } catch (error) {
      throw Exception("The initialValue provided is not a supported name!");
    }
  }

  static String getFlagImageAssetPath(String isoCode) {
    return "assets/${isoCode.toLowerCase()}.png";
  }

  static Widget getDefaultFlagImage(Country country, context) {
    return Image.asset(
      CountryPickerUtils2.getFlagImageAssetPath(country.isoCode),
      height: MediaQuery.of(context).size.height * 0.03,
      width: MediaQuery.of(context).size.width * 0.1,
      fit: BoxFit.fill,
      package: "country_pickers",
    );
  }

  static Country getCountryByPhoneCode(String phoneCode) {
    try {
      return countryList.firstWhere(
        (country) => country.phoneCode.toLowerCase() == phoneCode.toLowerCase(),
      );
    } catch (error) {
      throw Exception(
          "The initialValue provided is not a supported phone code!");
    }
  }
}
