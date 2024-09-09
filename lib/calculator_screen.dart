import 'package:calculator_app/Widgets/custom_button.dart';
import 'package:calculator_app/Widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var userInput = '';
  var answer = '';
  TextEditingController _userinput = TextEditingController();
  // bool isOperator(String x) {
  //   if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
  //     return true;
  //   }
  //   return false;
  // }

  void equalPressed() {
    String finaluserinput = _userinput.text;
    finaluserinput = finaluserinput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      answer = eval.toString();
      _userinput.text = answer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0c1821),
      appBar: AppBar(
        backgroundColor: const Color(0xff0c1821),
        title: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Xtext(text: 'Calculator', color: Color(0xffccc9dc), size: 28),
              Xtext(text: 'made by ali', color: Color(0xffccc9dc), size: 12),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0.h),
              child: TextField(
                keyboardType: TextInputType.number,
                readOnly: true,
                controller: _userinput,
                maxLines: 2,
                minLines: 2,
                cursorColor: const Color(0xffccc9dc),
                style: GoogleFonts.poppins(
                  fontSize: 26.sp,
                  color: const Color(0xffccc9dc),
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  fillColor: const Color(0xffffffff),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color(0xffccc9dc),
                          style: BorderStyle.solid,
                          width: 0.01.w),
                      borderRadius: BorderRadius.circular(12.r)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0.h),
              child: Container(
                height: 425.h,
                width: 400.w,
                decoration: BoxDecoration(
                  color: const Color(0xff1b2a41).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            onTap: () {
                              setState(() {
                                _userinput.text = '';
                              });
                            },
                            text: 'C',
                          ),
                          CustomButton1(onTap: () {
                            setState(() {
                              if (_userinput.text.isNotEmpty) {
                                _userinput.text = _userinput.text
                                    .substring(0, _userinput.text.length - 1);
                              }
                            });
                          }),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '()';
                                });
                              },
                              text: '()'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '+';
                                });
                              },
                              text: '+'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '7';
                                });
                              },
                              text: '7'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '8';
                                });
                              },
                              text: '8'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '9';
                                });
                              },
                              text: '9'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '-';
                                });
                              },
                              text: '-'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '4';
                                });
                              },
                              text: '4'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '5';
                                });
                              },
                              text: '5'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '6';
                                });
                              },
                              text: '6'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += 'x';
                                });
                              },
                              text: 'x'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '1';
                                });
                              },
                              text: '1'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '2';
                                });
                              },
                              text: '2'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '3';
                                });
                              },
                              text: '3'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '/';
                                });
                              },
                              text: '÷'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '.';
                                });
                              },
                              text: '.'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '0';
                                });
                              },
                              text: '0'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  _userinput.text += '%';
                                });
                              },
                              text: '%'),
                          CustomButton(
                              onTap: () {
                                setState(() {
                                  equalPressed();
                                });
                              },
                              text: '='),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}