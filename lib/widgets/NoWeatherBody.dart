import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'There is no weather😔start',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(
              fontSize: 28,
            ),
          )
        ],
      ),
    );
  }
}
