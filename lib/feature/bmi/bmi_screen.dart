import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'components/bottom_button.dart';
import 'components/custom_card.dart';
import 'components/icon_content.dart';
import 'components/round_icon_button.dart';
import 'constants.dart';
import 'models/gender.dart';
import 'providers/bmi_provider.dart';

class BmiScreen extends ConsumerWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bmiState = ref.watch(bmiCalculatorProvider);
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Home Page'))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    onTap: () {
                      ref
                          .read(bmiCalculatorProvider.notifier)
                          .setGender(Gender.male);
                    },
                    colour:
                        bmiState.gender == Gender.male
                            ? activeCardColor
                            : inactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [IconContent(icon: Icons.male, label: 'Male')],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    onTap: () {
                      ref
                          .read(bmiCalculatorProvider.notifier)
                          .setGender(Gender.female);
                    },
                    colour:
                        bmiState.gender == Gender.female
                            ? activeCardColor
                            : inactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconContent(icon: Icons.female, label: 'Female'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: labelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(bmiState.height.toString(), style: kNumberTextStyle),
                      Text("cm", style: labelTextStyle),
                    ],
                  ),
                  Slider(
                    value: bmiState.height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      ref
                          .read(bmiCalculatorProvider.notifier)
                          .setHeight(newValue.round());
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT", style: labelTextStyle),
                        Text(
                          bmiState.weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                ref
                                    .read(bmiCalculatorProvider.notifier)
                                    .decrementWeight();
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                ref
                                    .read(bmiCalculatorProvider.notifier)
                                    .incrementWeight();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE", style: labelTextStyle),
                        Text(bmiState.age.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                ref
                                    .read(bmiCalculatorProvider.notifier)
                                    .decrementAge();
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                ref
                                    .read(bmiCalculatorProvider.notifier)
                                    .incrementAge();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              final bmiResult =
                  ref.read(bmiCalculatorProvider.notifier).calculateBMI();
              GoRouter.of(context).push('/result', extra: bmiResult);
            },
            buttonTitle: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
