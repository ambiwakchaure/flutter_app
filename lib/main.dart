import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "SIC App",
    home: SIForm(),
    theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  var _currencies = ["Rupees", "Dollar", "Pounds", "Other"];
  final _minimumPAdding = 5.0;
  var _currentItemSelected = '';
  var _displayResult = '';
  var _formKey = GlobalKey<FormState>();
  TextEditingController principleController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _currentItemSelected = _currencies[0];
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Simple Interest Calculator",
            style: TextStyle(fontFamily: 'Raleway')),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
            padding: EdgeInsets.all(_minimumPAdding * 2),
            child: ListView(
              children: <Widget>[
                getImageAsset(),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPAdding, bottom: _minimumPAdding),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: textStyle,
                      controller: principleController,
                      validator: (String value) {
                        if (value.isEmpty)
                          return "Please enter principle amount";
                        else if (!isNumeric(value))
                          return "Invalid Principle amount";
                      },
                      decoration: InputDecoration(
                          labelText: 'Principal',
                          labelStyle: textStyle,
                          hintText: 'Enter Principal e.g. 12000',
                          hintStyle: TextStyle(fontFamily: 'Raleway'),
                          errorStyle: TextStyle(color: Colors.yellowAccent
                              //fontSize: 15.0
                              ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPAdding, bottom: _minimumPAdding),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: textStyle,
                      controller: roiController,
                      validator: (String value) {
                        if (value.isEmpty)
                          return "Please enter rate of interest";
                        else if (!isNumeric(value))
                          return "Invalid rate of interest";
                      },
                      decoration: InputDecoration(
                          labelText: 'Rate of Interest',
                          labelStyle: textStyle,
                          hintText: 'In percent',
                          hintStyle: TextStyle(fontFamily: 'Raleway'),
                          errorStyle: TextStyle(color: Colors.yellowAccent
                              //fontSize: 15.0
                              ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPAdding, bottom: _minimumPAdding),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: textStyle,
                          controller: termController,
                          validator: (String value) {
                            if (value.isEmpty)
                              return "Please enter term";
                            else if (!isNumeric(value)) return "Invalid term";
                          },
                          decoration: InputDecoration(
                              labelText: 'Term',
                              labelStyle: textStyle,
                              hintText: 'Time in years',
                              hintStyle: TextStyle(fontFamily: 'Raleway'),
                              errorStyle: TextStyle(color: Colors.yellowAccent
                                  //fontSize: 15.0
                                  ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        )),
                        Container(
                          width: _minimumPAdding * 5,
                        ),
                        Expanded(
                            child: DropdownButton<String>(
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                  style: TextStyle(fontFamily: 'Raleway')),
                            );
                          }).toList(),
                          value: _currentItemSelected,
                          onChanged: (String newValueSelected) =>
                              _onDropDownItemSelected(newValueSelected),
                        ))
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPAdding, bottom: _minimumPAdding),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            color: Theme.of(context).accentColor,
                            textColor: Theme.of(context).primaryColorDark,
                            child: Text(
                              'Calculate',
                              textScaleFactor: 1.0,
                            ),
                            onPressed: () {
                              setState(() {
                                if (_formKey.currentState.validate())
                                  this._displayResult =
                                      _calculateTotalReturns();
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RaisedButton(
                            color: Theme.of(context).primaryColorDark,
                            textColor: Theme.of(context).primaryColorLight,
                            child: Text('Reset', textScaleFactor: 1.0),
                            onPressed: () {
                              setState(() {
                                _reset();
                              });
                            },
                          ),
                        )
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPAdding, bottom: _minimumPAdding),
                  child: Text(this._displayResult,
                      style: TextStyle(fontFamily: 'Raleway')),
                )
              ],
            )),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0);
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPAdding * 10.0),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  String _calculateTotalReturns() {
    double principle = double.parse(principleController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double totalAmtPAybale = principle + (principle * roi * term) / 100;

    return 'After $term years, your investment will be worth $totalAmtPAybale $_currentItemSelected';
  }

  void _reset() {
    principleController.text = '';
    roiController.text = '';
    termController.text = '';
    _displayResult = '';
    _currentItemSelected = _currencies[0];
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.parse(s, (e) => null) != null;
  }
}
