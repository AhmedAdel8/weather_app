import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Screens/search.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/widgets/NoWeatherBody.dart';
import 'package:weather_app/widgets/WeatherInfoBody.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       //backgroundColor: Colors.grey,
        title: const Text(
          'Weather App',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const SearchScreen();
              }));
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      // BlocBuilder: Cubitبتحط ودنها مع ال
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return WeatherInfoBody(
              weather: state.weatherModel,
            );
          } else {
            return const Text('oppos there was an error');
          }
        },
      ),
    );
  }
}

// cubit
// 1.create states
// 2.create cubit
// 3.create function
// 4.provide cubit
// 5.integrate cubit
// 6.trigger cubit
