
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormC(),
    );
  }
}

class FormC extends StatelessWidget {
  FormC({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marc Carrera Roura Form C'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FormBuilder(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormBuilderChoiceChips(
                      name: 'Choice Chips',
                      backgroundColor: Colors.blueAccent,
                      decoration: const InputDecoration(
                        labelText: 'Choice Chips',
                      border: OutlineInputBorder(),
                      ),
                      options: [
                        FormBuilderChipOption(
                          value: 'Flutter',
                          child: Text('Flutter'),
                        ),
                        FormBuilderChipOption(
                          value: 'Android OS',
                          child: Text('Android OS'),
                        ),
                        FormBuilderChipOption(
                          value: 'Chrome OS',
                          child: Text('Chrome OS'),
                        ),
                      ],
                      onChanged: (String? value) {
                        debugPrint(value);
                      },
                    ),

                    FormBuilderSwitch(
                      name: 'switch',
                      title: Text('Switch'),
                      initialValue: false,
                      activeColor: Colors.blue,
                      ),

                    FormBuilderTextField(
                      name: 'Text Field',
                      decoration: InputDecoration(
                        hintText: 'A̲',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                      ),
                      onChanged: (String? value) {
                        debugPrint(value);
                      },
                    ),

                    FormBuilderDropdown(
                      name: 'Dropdown field',
                      decoration: InputDecoration(
                        hintText: 'Select option',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      items: const [
                        DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
                        DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
                        DropdownMenuItem(value: 'Option 3', child: Text('Option 3')),
                        DropdownMenuItem(value: 'Option 4', child: Text('Option 4')),
                      ],
                      onChanged: (String? value) {
                        debugPrint(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
