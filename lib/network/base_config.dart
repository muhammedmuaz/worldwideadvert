abstract class BaseConfig {
  String get apiUrl;
  String get baseUrl;
  String get apiUrlClone;
}

class DevConfig implements BaseConfig{
@override
String get apiUrl => "https://api.worldwideadverts.info/";
@override
String get baseUrl => "https://api.worldwideadverts.info/";
@override
String get apiUrlClone => "";
}


class ProductionConfig implements BaseConfig{
@override
String get apiUrl => "";
@override
String get baseUrl => "";
@override
String get apiUrlClone => "";
}