import 'package:dashed_line_sample/dashed_line_1.dart';
import 'package:dashed_line_sample/dashed_line_2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashed Line',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'A',
                style: Theme.of(context).textTheme.headline1,
              ),
              Row(
                children: [
                  const Expanded(
                    child: DashedLine1(),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.content_cut),
                  const SizedBox(width: 8),
                  Text(
                    '切り取り線',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.content_cut),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: DashedLine2(),
                  ),
                ],
              ),
              Text(
                'B',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
