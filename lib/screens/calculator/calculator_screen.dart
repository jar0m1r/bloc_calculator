import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: FoldableDisplay()),
              BasicNumPad(),
            ],
          ),
        ),
      ),
    );
  }
}

class FoldableDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue[50],
      child: ListView(
        reverse: true,
        children: [
          CalculationView(),
        ],
      ),
    );
  }
}

class CalculationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Colors.blue[100]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('4', style: TextStyle(fontSize: 18)),
          const Text('+', style: TextStyle(fontSize: 18)),
          const Text('8', style: TextStyle(fontSize: 36)),
        ],
      ),
    );
  }
}

class BasicNumPad extends StatelessWidget {
  List<Widget> createNumpadItems() {
    return [
      '7',
      '8',
      '9',
      '+',
      '-',
      '4',
      '5',
      '6',
      'x',
      ':',
      '1',
      '2',
      '3',
      '',
      '=',
      '',
      '0',
      '',
      '<',
      'C',
    ]
        .map((item) => OutlineButton(
            onPressed: () {},
            child: Center(
                child: Text(item, style: const TextStyle(fontSize: 24)))))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: (MediaQuery.of(context).size.width / 5) * 4,
      child: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        children: createNumpadItems(),
      ),
    );
  }
}
