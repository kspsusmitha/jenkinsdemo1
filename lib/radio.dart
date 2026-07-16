import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String _selectedValue = "Option 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Example"),
      ),
      body: RadioGroup<String>(
        groupValue: _selectedValue,
        onChanged: (String? value) {
          if (value != null) {
            setState(() {
              _selectedValue = value;
            });
          }
        },
        child: ListView(
          children: const [
            RadioListTile<String>(
              title: Text("Option 1"),
              value: "Option 1",
            ),
            RadioListTile<String>(
              title: Text("Option 2"),
              value: "Option 2",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  NextPage(selectedValue: _selectedValue),
            ),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  final String selectedValue;

  const NextPage({
    super.key,
    required this.selectedValue,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Page"),
      ),
      body: Center(
        child: Text(
          "Selected Value: $selectedValue",
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}