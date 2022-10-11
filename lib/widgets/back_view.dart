import 'package:flutter/material.dart';
import '../constants.dart';

class BackView extends StatelessWidget {
  final int monthIndex;
  const BackView({
    Key? key,
    required this.monthIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 8.0),
          ],
        ),
        child: Column(
          children: [
            Text(
              '$monthIndex',
              textScaleFactor: 2.5,
            ),
            const SizedBox(height: 5.0),
            Text(
              months[monthIndex]!.keys.toList()[0],
              textScaleFactor: 2.0,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20.0),
            // dates
            Expanded(
              child: GridView.builder(
                itemCount: months[monthIndex]!.values.toList()[0],
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemBuilder: (_, i) {
                  int day = i + 1;
                  String cDay = day < 10 ? '0$day' : '$day';
                  String cMonth =
                      monthIndex < 10 ? '0$monthIndex' : '$monthIndex';
                  DateTime date = DateTime.parse('2022-$cMonth-$cDay');

                  return Text(
                    '$day',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: date.weekday == DateTime.sunday
                          ? Colors.red
                          : date.weekday == DateTime.saturday
                              ? Colors.blue
                              : Colors.black,
                    ),
                  );
                },
              ),
            ),
            const Text(
              'Select a date to write',
              textScaleFactor: 0.8,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
