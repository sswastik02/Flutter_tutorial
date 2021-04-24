import 'package:flutter/material.dart';
import './entries.dart';

class EntriesManager extends StatefulWidget {
  //now i need stateful as this will be dynamically changing data without building

  final String startingEntry; // final because it can only be changed in state

  EntriesManager(this.startingEntry);

  @override
  State<StatefulWidget> createState() {
    return _EntriesManagerState();
  }
}

class _EntriesManagerState extends State<EntriesManager> {
  //List<String> _entries = ['Linux Distros'];
  // List<String> _entries = [widget.startingEntry]; // trying to add data from outside the widget
  // but this wont work cuz its in a class, (widget actually access the widget from the state that belongs to the widget
  // in this case from _EntriesManagerState to EntriesManager)
  List<String> _entries = [];
  var x = 0;
  // you can do this and class will remember it and any alteration because itspart of state

  void pressed() {
    // debug function to print no. of times button is pressed
    x += 1;
    print(x);
  }

  @override
  void initState() {
    // this function is called whenever a state needs to be created (usually only once cuz after that its only updating state)
    _entries.add(widget.startingEntry);
    super.initState(); // this calls the initstate of State (super class)
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
            // style: ButtonStyle(
            //   backgroundColor: MaterialStateProperty.resolveWith<Color>(
            //     (Set<MaterialState> states) {
            //       if (states.contains(MaterialState.pressed))
            //         return Colors.green;
            //       return Theme.of(context).primaryColor;
            //     },
            //   ),
            // ),
            // use the above for different states of button
            onPressed: () {
              // onPressed expects a function name so if you are putting only 1 function do not use parenthesis
              setState(() {
                // the setState will rerender build without rebuilding it
                _entries.add('Terminal');
                pressed();
              });
            },
            child: Text('Add Entries'),
          ),
        ),
        Entries(_entries),
        // basically loads a stateless widget from entries.dart
      ],
    );
  }
}
