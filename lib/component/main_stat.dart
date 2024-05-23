import 'package:flutter/material.dart';

class MainStat extends StatelessWidget {

  const MainStat({super.key});

  @override
  Widget build(BuildContext context) {

    final ts = TextStyle(
      color: Colors.white,
      fontSize: 40.0,
      fontWeight: FontWeight.w700,
    );

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              '서울',
              style: ts,
            ),
            Text(
              '2024-05-31',
              style: ts.copyWith(
                fontSize: 20.0,
                fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(height: 20.0),
            Image.asset(
              'asset/image/good.png',
              width: MediaQuery.of(context).size.width / 2,
            ),
            SizedBox(height: 20.0),
            Text(
              '보통',
              style: ts,
            ),
            Text(
              '나쁘지 않네요',
              style: ts.copyWith(
                fontSize: 20.0,
                fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ),
    );
  }
}
