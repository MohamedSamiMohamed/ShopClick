import 'package:flutter/material.dart';

class Searching extends StatelessWidget {
  const Searching({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: TextField(
          maxLines: 1,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
              hintText: 'What are you looking for?',
              prefixIcon: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  color: Color(0xFF333333),
                  child: Icon(
                    Icons.search,
                    color: Color(0xFFFFDE0A),
                  )),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
