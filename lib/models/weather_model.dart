class WeatherModel {
  final String cityName;
  final DateTime date;
  final String? image;
  final double temp;
  final double MaxTemp;
  final double MinTemp;
  final String WeatherCondition;

  WeatherModel(
      {required this.cityName,
      required this.date,
      this.image,
      required this.temp,
      required this.MaxTemp,
      required this.MinTemp,
      required this.WeatherCondition});
  //factory : بتسمح ليا اعمل ريترن لاوبجكت ذات نفسه 
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      MaxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      MinTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      WeatherCondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
}
