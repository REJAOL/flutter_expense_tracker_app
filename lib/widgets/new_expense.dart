import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  var _enteredTitle = '';

  void _saveTitleInput(String inputValue){
    _enteredTitle = inputValue;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children:  [
          TextField(
            onChanged: _saveTitleInput,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text('title'),
            ),
          ),
          Row(children: [
          ElevatedButton(
              onPressed: (){
                print(_enteredTitle);
              },
              child: Text('Save Expense'),
          )
          ],
          ),
        ],
      ),
    );
  }
}
