import 'package:flutter/material.dart';

class Customform extends StatefulWidget {
  const Customform({super.key});

  @override
  CustomFormState createState() {
    return CustomFormState();
  }
}

class CustomFormState extends State<Customform> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  final List<String> _items = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Name',
            ),
            controller: _textController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter valid name';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    _items.add(_textController.text);
                  });
                  _textController.clear();
                }
              },
              child: const Text('Submit'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_items[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
