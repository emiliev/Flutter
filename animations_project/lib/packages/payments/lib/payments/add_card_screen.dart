import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:widgets/widgets/input_field_wrapper.dart';
import 'package:widgets/widgets/primary_button.dart';

class AddCardScreen extends StatefulWidget {
  @override
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final _formKey = GlobalKey<FormState>();
  FocusNode? _cvvFocusNode;
  bool _isCvvFocused = false;

  final Map<String, dynamic> formData = {
    'card_number': "",
    'card_name': "",
    'expiry_date': DateTime.now().add(Duration(days: 30)),
    'cvv': "",
  };

  @override
  void initState() {
    super.initState();
    _cvvFocusNode = FocusNode();
    _cvvFocusNode!.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _cvvFocusNode!.removeListener(_handleFocusChange);
    _cvvFocusNode!.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    if (_cvvFocusNode!.hasFocus) {
      _isCvvFocused = true;
    } else {
      _isCvvFocused = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double _rotationFactor = _isCvvFocused ? 1.0 : 0.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Card'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TweenAnimationBuilder(
              duration: Duration(milliseconds: 1000),
              curve: Curves.fastOutSlowIn,
              tween: Tween(begin: _rotationFactor, end: _rotationFactor),
              builder: (context, dynamic value, child) {
                return Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001) // perspective
                    ..rotateY(math.pi * value),
                  alignment: FractionalOffset.center,
                  child: value < 0.5
                      ? FrontCard(
                          cardNumber: formData["card_number"],
                          cardName: formData["card_name"],
                          expiryDate: formData["expiry_date"],
                        )
                      : BackCard(
                          cvv: formData["cvv"],
                        ),
                );
              },
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(height: 16),
                        InputFieldWrapper(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            maxLength: 16,
                            decoration:
                                InputDecoration(hintText: 'Card Number'),
                            onChanged: (value) {
                              setState(() {
                                formData['card_number'] = value;
                              });
                            },
                          ),
                        ),
                        InputFieldWrapper(
                          child: TextFormField(
                            decoration:
                                InputDecoration(hintText: 'Name on Card'),
                            onChanged: (value) {
                              setState(() {
                                formData['card_name'] = value;
                              });
                            },
                          ),
                        ),
                        InputFieldWrapper(
                          child: TextFormField(
                            decoration:
                                InputDecoration(hintText: "Expiry Date"),
                            onTap: () async {
                              DateTime? date = DateTime(1900);
                              // Below line stops keyboard from appearing
                              FocusScope.of(context)
                                  .requestFocus(new FocusNode());

                              date = await (showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                                helpText: 'Select expiry date',
                                fieldLabelText: 'Expiry date',
                                fieldHintText: 'Month/Date/Year',
                                builder: (context, child) {
                                  return Theme(
                                    data: ThemeData.light().copyWith(
                                      colorScheme: ColorScheme.light(
                                        primary: Color(0xFF158443),
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                              ));
                              setState(() {
                                formData["expiry_date"] =
                                    date ?? formData["expiry_date"];
                              });
                            },
                          ),
                        ),
                        InputFieldWrapper(
                          child: TextFormField(
                            focusNode: _cvvFocusNode,
                            keyboardType: TextInputType.number,
                            maxLength: 3,
                            decoration: InputDecoration(hintText: 'CVV'),
                            onChanged: (value) {
                              setState(() {
                                formData['cvv'] = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 8),
                        PrimaryButton(
                          name: "Add Card",
                          onTap: () {
                            final form = _formKey.currentState!;
                            FocusScope.of(context).unfocus();
                            if (form.validate()) {
                              form.save();
                              form.reset();
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class FrontCard extends StatelessWidget {
  final String? cardNumber;
  final String? cardName;
  final DateTime? expiryDate;

  late String _formattedCardNumber;
  late String _formattedExpiryDate;

  FrontCard({
    Key? key,
    this.cardNumber,
    this.cardName,
    this.expiryDate,
  }) : super(key: key) {
    _formattedCardNumber = this.cardNumber!.padRight(16, '*');
    _formattedCardNumber = _formattedCardNumber.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");
    _formattedExpiryDate =
        "${expiryDate?.month}/" + "${expiryDate?.year}".substring(2);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Mastercard"),
          Spacer(),
          Center(
            child: Text(
              _formattedCardNumber,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 24,
                    color: Colors.black,
                  ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "VALID\nTHRU",
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 8),
              Text(_formattedExpiryDate),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(cardName!.toUpperCase()),
              Image.asset("assets/images/mastercard-logo.png", width: 100),
            ],
          ),
        ],
      ),
    );
  }
}

class BackCard extends StatelessWidget {
  final String? cvv;
  const BackCard({
    Key? key,
    this.cvv,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001) // perspective
        ..rotateY(math.pi),
      alignment: FractionalOffset.center,
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Text("ELECTRONIC USE ONLY"),
            ),
            Container(
              color: Colors.black,
              height: 50,
            ),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.only(right: 16),
                alignment: Alignment.centerRight,
                color: Colors.grey,
                height: 50,
                child: Text(
                  cvv!,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
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
