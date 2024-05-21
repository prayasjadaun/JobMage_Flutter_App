import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({super.key});

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(
              width: double.infinity,
              height: 300,
              child: Lottie.asset('assets/animations/assessment.json')),
        ],
      ),
    );
  }
}
