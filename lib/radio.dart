import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  var _selectedValue = "Option 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          RadioListTile(
            title: Text('Option 1'),
            value: 'Option 1',
            groupValue: _selectedValue,
            onChanged: (String? value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          RadioListTile(
            title: Text('Option 2'),
            value: 'Option 2',
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
         Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NextPage(selectedValue: _selectedValue),
            ),
          );
        },
         child: Icon(Icons.arrow_forward),
      ),
    );
  }
}




class NextPage extends StatelessWidget {
  final String selectedValue;

  NextPage({required this.selectedValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text(
          'Selected Value: $selectedValue',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}