import 'package:flutter/material.dart';
import 'package:calculator/main.dart';

class _CalculatorState extends State<Calculator> {
  String _display = '0';
  final String _operator = '';
  final String _firstDigit = '';
  final String _secondDigit = '';
  final String _result = '';
  bool _isOperatorPressed = false;
  bool _isFirstDigitPressed = false;
  bool _isSecondDigitPressed = false;
  bool _isResultPressed = false;

  void _onDigitPressed(String digit) {
    if (_isOperatorPressed) {
      _display = digit;
      _isOperatorPressed = false;
    } else if (_isFirstDigitPressed) {
      _display = _display + digit;
    } else if (_isSecondDigitPressed) {
      _display = _display + digit;
    } else {
      _display = digit;
    }
    setState(() {
      _isFirstDigitPressed = true;
      _isSecondDigitPressed = false;
      _isResultPressed = false;
    });
  }

  void _onOperatorPressed(String operator) {
    if (_isOperatorPressed) {
      _display = operator;
      _isOperatorPressed = false;
    } else if (_isFirstDigitPressed) {
      _display = operator;
      _isOperatorPressed = true;
    } else if (_isSecondDigitPressed) {
      _display = operator;
      _isOperatorPressed = true;
    } else {
      _display = operator;
      _isOperatorPressed = true;
    }
    setState(() {
      _isFirstDigitPressed = false;
      _isSecondDigitPressed = false;
      _isResultPressed = false;
    });
  }

  void _onEqualPressed() {
    if (_isOperatorPressed) {
      _display = _display;
      _isOperatorPressed = false;
    } else if (_isFirstDigitPressed) {
      _display = _display;
      _isOperatorPressed = false;
    } else if (_isSecondDigitPressed) {
      _display = _display;
      _isOperatorPressed = false;
    } else {
      _display = _display;
      _isOperatorPressed = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
