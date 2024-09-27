import 'package:flutter/material.dart';

class Checkboxv2 extends StatefulWidget {
  Checkboxv2({super.key});

  @override
  State<Checkboxv2> createState() => _Checkboxv2State();
}

class _Checkboxv2State extends State<Checkboxv2> {
  List<String> selectedItems = [];
  final List<String> menuItems = ['Kumasi', 'Accra', 'Tamale'];

  void handleOnChange(String item, bool? isChecked) {
      if (isChecked == true) {
        selectedItems.add(item);
      } else {
        selectedItems.remove(item);
      }
  }

  void showCheckboxDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Regions'),
          content: ListBody(
            children: menuItems.map((item) {
              return CheckboxListTile(
                title: Text(item),
                controlAffinity: ListTileControlAffinity.leading,
                value: selectedItems.contains(item),
                onChanged: (isChecked) {
                  setState(() {
                  handleOnChange(item, isChecked);

                  });
                },
              );
            }).toList(),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Done'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Dropdown Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: showCheckboxDialog,
          child: const Text("Select Regions"),
        ),
      ),
    );
  }
}