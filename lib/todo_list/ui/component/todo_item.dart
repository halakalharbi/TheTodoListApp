import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String text;
  final VoidCallback onDelete;

  const TodoItem({required this.text, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(text), // Provide a unique key to each item, in this case, we use the text as the key
      direction: DismissDirection.endToStart, // Allow dismissal by dragging from right to left
      onDismissed: (_) => onDelete(), // Call the onDelete function when the item is dismissed
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16),
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: Card(
        color: Colors.green[100], // Set the desired green color for the card
        child: ListTile(
          title: Row(
            children: [
              Expanded(
                child: Text(text),
              ),
              SizedBox(width: 16), // Add space of 16 units between the text and the delete button
              IconButton(
                icon: Icon(
                  Icons.delete,// Set the color of the delete icon to red
                ),
                onPressed: onDelete, // Call the onDelete function when the delete button is pressed
              ),
            ],
          ),
        ),
      ),
    );
  }
}
