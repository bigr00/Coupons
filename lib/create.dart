import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _formKey = GlobalKey<FormState>();
  final _activityController = TextEditingController();
  DateTime _selectedExpiryDate = DateTime.now();;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _activityController,
                decoration: InputDecoration(
                  labelText: 'Activity Description',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              _buildExpiryDateField(),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    //submit form and create entry
                  }
                },
                child: Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}