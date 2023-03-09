import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';

final WeatherModel mockData = WeatherModel.fromJson(rawJson);

///
///
final Map<String, dynamic> rawJson = {
  "lat": 43.5883,
  "lon": 39.73,
  "timezone": "Europe/Moscow",
  "timezone_offset": 10800,
  "current": {
    "dt": 1678364182,
    "sunrise": 1678333504,
    "sunset": 1678375121,
    "temp": 290.77,
    "feels_like": 290.21,
    "pressure": 1012,
    "humidity": 62,
    "dew_point": 283.41,
    "uvi": 1.47,
    "clouds": 87,
    "visibility": 10000,
    "wind_speed": 1.54,
    "wind_deg": 255,
    "wind_gust": 1.97,
    "weather": [
      {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
    ]
  },
  "hourly": [
    {
      "dt": 1678363200,
      "temp": 290.77,
      "feels_like": 290.21,
      "pressure": 1012,
      "humidity": 62,
      "dew_point": 283.41,
      "uvi": 1.47,
      "clouds": 87,
      "visibility": 10000,
      "wind_speed": 1.54,
      "wind_deg": 255,
      "wind_gust": 1.97,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0.04
    },
    {
      "dt": 1678366800,
      "temp": 289.77,
      "feels_like": 289.11,
      "pressure": 1012,
      "humidity": 62,
      "dew_point": 282.47,
      "uvi": 0.79,
      "clouds": 89,
      "visibility": 10000,
      "wind_speed": 1.78,
      "wind_deg": 297,
      "wind_gust": 1.78,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0.04
    },
    {
      "dt": 1678370400,
      "temp": 288.53,
      "feels_like": 287.82,
      "pressure": 1012,
      "humidity": 65,
      "dew_point": 281.99,
      "uvi": 0.25,
      "clouds": 92,
      "visibility": 10000,
      "wind_speed": 1.78,
      "wind_deg": 287,
      "wind_gust": 2,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0.04
    },
    {
      "dt": 1678374000,
      "temp": 286.75,
      "feels_like": 286.02,
      "pressure": 1013,
      "humidity": 71,
      "dew_point": 281.6,
      "uvi": 0,
      "clouds": 92,
      "visibility": 10000,
      "wind_speed": 1.32,
      "wind_deg": 313,
      "wind_gust": 1.39,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0
    },
    {
      "dt": 1678377600,
      "temp": 285,
      "feels_like": 284.17,
      "pressure": 1013,
      "humidity": 74,
      "dew_point": 280.52,
      "uvi": 0,
      "clouds": 94,
      "visibility": 10000,
      "wind_speed": 1.14,
      "wind_deg": 34,
      "wind_gust": 1.08,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0.01
    },
    {
      "dt": 1678381200,
      "temp": 283.69,
      "feels_like": 282.76,
      "pressure": 1013,
      "humidity": 75,
      "dew_point": 278.7,
      "uvi": 0,
      "clouds": 97,
      "visibility": 10000,
      "wind_speed": 1.88,
      "wind_deg": 68,
      "wind_gust": 1.78,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0.01
    },
    {
      "dt": 1678384800,
      "temp": 283.89,
      "feels_like": 282.93,
      "pressure": 1013,
      "humidity": 73,
      "dew_point": 278.67,
      "uvi": 0,
      "clouds": 97,
      "visibility": 10000,
      "wind_speed": 1.92,
      "wind_deg": 75,
      "wind_gust": 1.79,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0.01
    },
    {
      "dt": 1678388400,
      "temp": 284.09,
      "feels_like": 283.12,
      "pressure": 1013,
      "humidity": 72,
      "dew_point": 278.59,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 2.41,
      "wind_deg": 80,
      "wind_gust": 2.35,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0
    },
    {
      "dt": 1678392000,
      "temp": 284.14,
      "feels_like": 283.17,
      "pressure": 1013,
      "humidity": 72,
      "dew_point": 278.58,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 2.48,
      "wind_deg": 92,
      "wind_gust": 2.52,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0
    },
    {
      "dt": 1678395600,
      "temp": 283.69,
      "feels_like": 282.71,
      "pressure": 1013,
      "humidity": 73,
      "dew_point": 278.48,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 1.46,
      "wind_deg": 126,
      "wind_gust": 1.83,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0
    },
    {
      "dt": 1678399200,
      "temp": 283.81,
      "feels_like": 282.84,
      "pressure": 1013,
      "humidity": 73,
      "dew_point": 278.51,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 1.84,
      "wind_deg": 101,
      "wind_gust": 1.97,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0
    },
    {
      "dt": 1678402800,
      "temp": 283.86,
      "feels_like": 282.87,
      "pressure": 1013,
      "humidity": 72,
      "dew_point": 278.39,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 2.73,
      "wind_deg": 105,
      "wind_gust": 2.82,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0
    },
    {
      "dt": 1678406400,
      "temp": 283.66,
      "feels_like": 282.67,
      "pressure": 1013,
      "humidity": 73,
      "dew_point": 278.37,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 1.72,
      "wind_deg": 102,
      "wind_gust": 1.98,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0
    },
    {
      "dt": 1678410000,
      "temp": 283.91,
      "feels_like": 282.9,
      "pressure": 1012,
      "humidity": 71,
      "dew_point": 278.23,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 3.11,
      "wind_deg": 78,
      "wind_gust": 3.26,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0.04
    },
    {
      "dt": 1678413600,
      "temp": 283.97,
      "feels_like": 282.99,
      "pressure": 1012,
      "humidity": 72,
      "dew_point": 278.51,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 3.92,
      "wind_deg": 75,
      "wind_gust": 4.58,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0.19
    },
    {
      "dt": 1678417200,
      "temp": 283.35,
      "feels_like": 282.38,
      "pressure": 1012,
      "humidity": 75,
      "dew_point": 278.42,
      "uvi": 0,
      "clouds": 90,
      "visibility": 10000,
      "wind_speed": 3.99,
      "wind_deg": 66,
      "wind_gust": 4.37,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0.11
    },
    {
      "dt": 1678420800,
      "temp": 282.99,
      "feels_like": 280.92,
      "pressure": 1012,
      "humidity": 78,
      "dew_point": 278.63,
      "uvi": 0,
      "clouds": 80,
      "visibility": 10000,
      "wind_speed": 4.08,
      "wind_deg": 61,
      "wind_gust": 4.85,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "облачно с прояснениями",
          "icon": "04d"
        }
      ],
      "pop": 0.07
    },
    {
      "dt": 1678424400,
      "temp": 283.59,
      "feels_like": 282.75,
      "pressure": 1012,
      "humidity": 79,
      "dew_point": 279.44,
      "uvi": 0.4,
      "clouds": 68,
      "visibility": 10000,
      "wind_speed": 2.96,
      "wind_deg": 70,
      "wind_gust": 4,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "облачно с прояснениями",
          "icon": "04d"
        }
      ],
      "pop": 0.07
    },
    {
      "dt": 1678428000,
      "temp": 284.62,
      "feels_like": 283.86,
      "pressure": 1012,
      "humidity": 78,
      "dew_point": 280.16,
      "uvi": 1.06,
      "clouds": 65,
      "visibility": 10000,
      "wind_speed": 0.57,
      "wind_deg": 131,
      "wind_gust": 1.29,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "облачно с прояснениями",
          "icon": "04d"
        }
      ],
      "pop": 0.07
    },
    {
      "dt": 1678431600,
      "temp": 284.42,
      "feels_like": 283.69,
      "pressure": 1012,
      "humidity": 80,
      "dew_point": 280.48,
      "uvi": 1.47,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 1,
      "wind_deg": 171,
      "wind_gust": 1.76,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0.16
    },
    {
      "dt": 1678435200,
      "temp": 285.14,
      "feels_like": 284.33,
      "pressure": 1012,
      "humidity": 74,
      "dew_point": 280.03,
      "uvi": 2.12,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 2.73,
      "wind_deg": 133,
      "wind_gust": 4.19,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0.31
    },
    {
      "dt": 1678438800,
      "temp": 285.21,
      "feels_like": 284.4,
      "pressure": 1012,
      "humidity": 74,
      "dew_point": 279.94,
      "uvi": 2.49,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 3.26,
      "wind_deg": 148,
      "wind_gust": 5.67,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0.27
    },
    {
      "dt": 1678442400,
      "temp": 285.44,
      "feels_like": 284.66,
      "pressure": 1012,
      "humidity": 74,
      "dew_point": 280.14,
      "uvi": 2.42,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 2.95,
      "wind_deg": 169,
      "wind_gust": 5.5,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0.23
    },
    {
      "dt": 1678446000,
      "temp": 284.66,
      "feels_like": 283.93,
      "pressure": 1012,
      "humidity": 79,
      "dew_point": 280.43,
      "uvi": 1.97,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 2.97,
      "wind_deg": 226,
      "wind_gust": 5.28,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0.23
    },
    {
      "dt": 1678449600,
      "temp": 284.54,
      "feels_like": 283.82,
      "pressure": 1013,
      "humidity": 80,
      "dew_point": 280.56,
      "uvi": 1.28,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 0.8,
      "wind_deg": 352,
      "wind_gust": 1.93,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0.27
    },
    {
      "dt": 1678453200,
      "temp": 284.56,
      "feels_like": 283.85,
      "pressure": 1014,
      "humidity": 80,
      "dew_point": 280.59,
      "uvi": 0.45,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 1.92,
      "wind_deg": 330,
      "wind_gust": 3.5,
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "небольшой дождь",
          "icon": "10d"
        }
      ],
      "pop": 0.45,
      "rain": {"1h": 0.2}
    },
    {
      "dt": 1678456800,
      "temp": 284.56,
      "feels_like": 283.82,
      "pressure": 1013,
      "humidity": 79,
      "dew_point": 280.47,
      "uvi": 0.15,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 2.41,
      "wind_deg": 5,
      "wind_gust": 2.73,
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "небольшой дождь",
          "icon": "10d"
        }
      ],
      "pop": 0.49,
      "rain": {"1h": 0.19}
    },
    {
      "dt": 1678460400,
      "temp": 284.83,
      "feels_like": 284.06,
      "pressure": 1013,
      "humidity": 77,
      "dew_point": 280.28,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 4.02,
      "wind_deg": 32,
      "wind_gust": 5.02,
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "небольшой дождь",
          "icon": "10d"
        }
      ],
      "pop": 0.47,
      "rain": {"1h": 0.17}
    },
    {
      "dt": 1678464000,
      "temp": 284.6,
      "feels_like": 283.86,
      "pressure": 1014,
      "humidity": 79,
      "dew_point": 280.36,
      "uvi": 0,
      "clouds": 99,
      "visibility": 10000,
      "wind_speed": 2.25,
      "wind_deg": 37,
      "wind_gust": 2.6,
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "небольшой дождь",
          "icon": "10n"
        }
      ],
      "pop": 0.48,
      "rain": {"1h": 0.13}
    },
    {
      "dt": 1678467600,
      "temp": 284.38,
      "feels_like": 283.62,
      "pressure": 1014,
      "humidity": 79,
      "dew_point": 280.25,
      "uvi": 0,
      "clouds": 99,
      "visibility": 10000,
      "wind_speed": 1.96,
      "wind_deg": 30,
      "wind_gust": 2.53,
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "небольшой дождь",
          "icon": "10n"
        }
      ],
      "pop": 0.49,
      "rain": {"1h": 0.16}
    },
    {
      "dt": 1678471200,
      "temp": 284.28,
      "feels_like": 283.51,
      "pressure": 1014,
      "humidity": 79,
      "dew_point": 280.07,
      "uvi": 0,
      "clouds": 99,
      "visibility": 10000,
      "wind_speed": 1.99,
      "wind_deg": 54,
      "wind_gust": 2.5,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0.5
    },
    {
      "dt": 1678474800,
      "temp": 284.2,
      "feels_like": 283.48,
      "pressure": 1014,
      "humidity": 81,
      "dew_point": 280.36,
      "uvi": 0,
      "clouds": 96,
      "visibility": 10000,
      "wind_speed": 4.54,
      "wind_deg": 71,
      "wind_gust": 5.53,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0.28
    },
    {
      "dt": 1678478400,
      "temp": 284.37,
      "feels_like": 283.64,
      "pressure": 1014,
      "humidity": 80,
      "dew_point": 280.45,
      "uvi": 0,
      "clouds": 98,
      "visibility": 10000,
      "wind_speed": 3.91,
      "wind_deg": 70,
      "wind_gust": 4.42,
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "небольшой дождь",
          "icon": "10n"
        }
      ],
      "pop": 0.32,
      "rain": {"1h": 0.14}
    },
    {
      "dt": 1678482000,
      "temp": 283.96,
      "feels_like": 283.21,
      "pressure": 1013,
      "humidity": 81,
      "dew_point": 280.23,
      "uvi": 0,
      "clouds": 74,
      "visibility": 10000,
      "wind_speed": 3.59,
      "wind_deg": 79,
      "wind_gust": 4.27,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "облачно с прояснениями",
          "icon": "04n"
        }
      ],
      "pop": 0.32
    },
    {
      "dt": 1678485600,
      "temp": 283.77,
      "feels_like": 283.03,
      "pressure": 1013,
      "humidity": 82,
      "dew_point": 280.09,
      "uvi": 0,
      "clouds": 59,
      "visibility": 10000,
      "wind_speed": 3.34,
      "wind_deg": 77,
      "wind_gust": 3.76,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "облачно с прояснениями",
          "icon": "04n"
        }
      ],
      "pop": 0.27
    },
    {
      "dt": 1678489200,
      "temp": 284.16,
      "feels_like": 283.38,
      "pressure": 1012,
      "humidity": 79,
      "dew_point": 280.06,
      "uvi": 0,
      "clouds": 57,
      "visibility": 10000,
      "wind_speed": 3.73,
      "wind_deg": 77,
      "wind_gust": 4.22,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "облачно с прояснениями",
          "icon": "04n"
        }
      ],
      "pop": 0.23
    },
    {
      "dt": 1678492800,
      "temp": 284.23,
      "feels_like": 283.43,
      "pressure": 1012,
      "humidity": 78,
      "dew_point": 279.95,
      "uvi": 0,
      "clouds": 55,
      "visibility": 10000,
      "wind_speed": 3.38,
      "wind_deg": 74,
      "wind_gust": 3.65,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "облачно с прояснениями",
          "icon": "04n"
        }
      ],
      "pop": 0.19
    },
    {
      "dt": 1678496400,
      "temp": 284.24,
      "feels_like": 283.42,
      "pressure": 1012,
      "humidity": 77,
      "dew_point": 279.79,
      "uvi": 0,
      "clouds": 93,
      "visibility": 10000,
      "wind_speed": 3.57,
      "wind_deg": 74,
      "wind_gust": 3.72,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0
    },
    {
      "dt": 1678500000,
      "temp": 284.4,
      "feels_like": 283.56,
      "pressure": 1012,
      "humidity": 76,
      "dew_point": 279.76,
      "uvi": 0,
      "clouds": 97,
      "visibility": 10000,
      "wind_speed": 3.88,
      "wind_deg": 76,
      "wind_gust": 4.25,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0
    },
    {
      "dt": 1678503600,
      "temp": 284.3,
      "feels_like": 283.46,
      "pressure": 1011,
      "humidity": 76,
      "dew_point": 279.65,
      "uvi": 0,
      "clouds": 97,
      "visibility": 10000,
      "wind_speed": 3.81,
      "wind_deg": 84,
      "wind_gust": 4.42,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04n"}
      ],
      "pop": 0
    },
    {
      "dt": 1678507200,
      "temp": 284.17,
      "feels_like": 283.29,
      "pressure": 1010,
      "humidity": 75,
      "dew_point": 279.37,
      "uvi": 0,
      "clouds": 97,
      "visibility": 10000,
      "wind_speed": 4.05,
      "wind_deg": 80,
      "wind_gust": 4.74,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0
    },
    {
      "dt": 1678510800,
      "temp": 284.57,
      "feels_like": 283.73,
      "pressure": 1010,
      "humidity": 75,
      "dew_point": 279.56,
      "uvi": 0.37,
      "clouds": 98,
      "visibility": 10000,
      "wind_speed": 3.62,
      "wind_deg": 85,
      "wind_gust": 4.42,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0
    },
    {
      "dt": 1678514400,
      "temp": 285.68,
      "feels_like": 284.89,
      "pressure": 1010,
      "humidity": 73,
      "dew_point": 280.39,
      "uvi": 0.98,
      "clouds": 98,
      "visibility": 10000,
      "wind_speed": 2.73,
      "wind_deg": 106,
      "wind_gust": 3.86,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0
    },
    {
      "dt": 1678518000,
      "temp": 285.96,
      "feels_like": 285.23,
      "pressure": 1010,
      "humidity": 74,
      "dew_point": 280.73,
      "uvi": 1.53,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 3.52,
      "wind_deg": 132,
      "wind_gust": 5.54,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0
    },
    {
      "dt": 1678521600,
      "temp": 286.44,
      "feels_like": 285.68,
      "pressure": 1009,
      "humidity": 71,
      "dew_point": 280.71,
      "uvi": 2.2,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 5.57,
      "wind_deg": 149,
      "wind_gust": 9.27,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0
    },
    {
      "dt": 1678525200,
      "temp": 286.94,
      "feels_like": 286.2,
      "pressure": 1009,
      "humidity": 70,
      "dew_point": 280.87,
      "uvi": 2.58,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 5.71,
      "wind_deg": 133,
      "wind_gust": 9.73,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0
    },
    {
      "dt": 1678528800,
      "temp": 289.13,
      "feels_like": 288.3,
      "pressure": 1008,
      "humidity": 58,
      "dew_point": 280.22,
      "uvi": 2.08,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.77,
      "wind_deg": 105,
      "wind_gust": 10.74,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0
    },
    {
      "dt": 1678532400,
      "temp": 289.06,
      "feels_like": 288.27,
      "pressure": 1007,
      "humidity": 60,
      "dew_point": 280.58,
      "uvi": 1.69,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 5.2,
      "wind_deg": 97,
      "wind_gust": 7.13,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "pop": 0.04
    }
  ],
  "daily": [
    {
      "dt": 1678352400,
      "sunrise": 1678333504,
      "sunset": 1678375121,
      "moonrise": 1678382460,
      "moonset": 1678336920,
      "moon_phase": 0.56,
      "temp": {
        "day": 288.31,
        "min": 282.54,
        "max": 290.77,
        "night": 284.14,
        "eve": 286.75,
        "morn": 282.54
      },
      "feels_like": {
        "day": 287.4,
        "night": 283.17,
        "eve": 286.02,
        "morn": 280.81
      },
      "pressure": 1013,
      "humidity": 58,
      "dew_point": 280.11,
      "wind_speed": 3.95,
      "wind_deg": 52,
      "wind_gust": 3.86,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "облачно с прояснениями",
          "icon": "04d"
        }
      ],
      "clouds": 84,
      "pop": 0.04,
      "uvi": 2.84
    },
    {
      "dt": 1678438800,
      "sunrise": 1678419798,
      "sunset": 1678461595,
      "moonrise": 1678472880,
      "moonset": 1678424400,
      "moon_phase": 0.59,
      "temp": {
        "day": 285.21,
        "min": 282.99,
        "max": 285.44,
        "night": 284.37,
        "eve": 284.83,
        "morn": 283.35
      },
      "feels_like": {
        "day": 284.4,
        "night": 283.64,
        "eve": 284.06,
        "morn": 282.38
      },
      "pressure": 1012,
      "humidity": 74,
      "dew_point": 279.94,
      "wind_speed": 4.54,
      "wind_deg": 71,
      "wind_gust": 5.67,
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "небольшой дождь",
          "icon": "10d"
        }
      ],
      "clouds": 100,
      "pop": 0.5,
      "rain": 0.99,
      "uvi": 2.49
    },
    {
      "dt": 1678525200,
      "sunrise": 1678506092,
      "sunset": 1678548069,
      "moonrise": 1678563420,
      "moonset": 1678512000,
      "moon_phase": 0.62,
      "temp": {
        "day": 286.94,
        "min": 283.77,
        "max": 289.13,
        "night": 286.27,
        "eve": 286.52,
        "morn": 284.3
      },
      "feels_like": {
        "day": 286.2,
        "night": 285.44,
        "eve": 285.84,
        "morn": 283.46
      },
      "pressure": 1009,
      "humidity": 70,
      "dew_point": 280.87,
      "wind_speed": 6.77,
      "wind_deg": 105,
      "wind_gust": 10.74,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "clouds": 100,
      "pop": 0.32,
      "uvi": 2.58
    },
    {
      "dt": 1678611600,
      "sunrise": 1678592385,
      "sunset": 1678634543,
      "moonrise": 1678654200,
      "moonset": 1678599840,
      "moon_phase": 0.66,
      "temp": {
        "day": 288.86,
        "min": 285.19,
        "max": 288.86,
        "night": 285.19,
        "eve": 286.47,
        "morn": 286.44
      },
      "feels_like": {
        "day": 287.97,
        "night": 284.72,
        "eve": 285.71,
        "morn": 285.68
      },
      "pressure": 1007,
      "humidity": 57,
      "dew_point": 279.78,
      "wind_speed": 4.81,
      "wind_deg": 95,
      "wind_gust": 8.7,
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "небольшой дождь",
          "icon": "10d"
        }
      ],
      "clouds": 100,
      "pop": 0.89,
      "rain": 2.67,
      "uvi": 2.24
    },
    {
      "dt": 1678698000,
      "sunrise": 1678678678,
      "sunset": 1678721016,
      "moonrise": 0,
      "moonset": 1678687980,
      "moon_phase": 0.69,
      "temp": {
        "day": 283.04,
        "min": 281.5,
        "max": 284.41,
        "night": 281.5,
        "eve": 282.02,
        "morn": 284.41
      },
      "feels_like": {
        "day": 282.41,
        "night": 281.5,
        "eve": 281.53,
        "morn": 284.05
      },
      "pressure": 1013,
      "humidity": 97,
      "dew_point": 281.88,
      "wind_speed": 3.31,
      "wind_deg": 356,
      "wind_gust": 5.09,
      "weather": [
        {"id": 501, "main": "Rain", "description": "дождь", "icon": "10d"}
      ],
      "clouds": 100,
      "pop": 0.98,
      "rain": 27,
      "uvi": 0.56
    },
    {
      "dt": 1678784400,
      "sunrise": 1678764971,
      "sunset": 1678807489,
      "moonrise": 1678744980,
      "moonset": 1678776600,
      "moon_phase": 0.73,
      "temp": {
        "day": 279.39,
        "min": 279.02,
        "max": 280.93,
        "night": 279.41,
        "eve": 279.85,
        "morn": 279.19
      },
      "feels_like": {
        "day": 276.15,
        "night": 278.39,
        "eve": 279.85,
        "morn": 274.6
      },
      "pressure": 1026,
      "humidity": 85,
      "dew_point": 276.33,
      "wind_speed": 8.25,
      "wind_deg": 140,
      "wind_gust": 8.02,
      "weather": [
        {"id": 501, "main": "Rain", "description": "дождь", "icon": "10d"}
      ],
      "clouds": 98,
      "pop": 0.98,
      "rain": 5.91,
      "uvi": 1
    },
    {
      "dt": 1678870800,
      "sunrise": 1678851263,
      "sunset": 1678893962,
      "moonrise": 1678835700,
      "moonset": 1678865940,
      "moon_phase": 0.75,
      "temp": {
        "day": 284.75,
        "min": 280.04,
        "max": 284.75,
        "night": 283.47,
        "eve": 283.41,
        "morn": 280.42
      },
      "feels_like": {
        "day": 283.56,
        "night": 282.52,
        "eve": 282.37,
        "morn": 278.16
      },
      "pressure": 1010,
      "humidity": 61,
      "dew_point": 276.61,
      "wind_speed": 3.36,
      "wind_deg": 347,
      "wind_gust": 3.78,
      "weather": [
        {"id": 804, "main": "Clouds", "description": "пасмурно", "icon": "04d"}
      ],
      "clouds": 99,
      "pop": 0,
      "uvi": 1
    },
    {
      "dt": 1678957200,
      "sunrise": 1678937555,
      "sunset": 1678980435,
      "moonrise": 1678926120,
      "moonset": 1678956000,
      "moon_phase": 0.8,
      "temp": {
        "day": 282.6,
        "min": 281.25,
        "max": 283.07,
        "night": 281.25,
        "eve": 282.54,
        "morn": 282.46
      },
      "feels_like": {
        "day": 280.23,
        "night": 279.11,
        "eve": 278.98,
        "morn": 281.87
      },
      "pressure": 1014,
      "humidity": 89,
      "dew_point": 280.19,
      "wind_speed": 8.18,
      "wind_deg": 137,
      "wind_gust": 12.01,
      "weather": [
        {"id": 501, "main": "Rain", "description": "дождь", "icon": "10d"}
      ],
      "clouds": 100,
      "pop": 0.96,
      "rain": 4.37,
      "uvi": 1
    }
  ],
  "alerts": [
    {
      "sender_name": "web@mecom.ru",
      "event": "Avalanches",
      "start": 1678363200,
      "end": 1678460400,
      "description": "",
      "tags": ["Avalanches"]
    }
  ]
};
