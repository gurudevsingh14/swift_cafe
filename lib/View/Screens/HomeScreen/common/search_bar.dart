import 'package:flutter/material.dart';
class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "search for beverages",
          // isCollapsed: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.zero,
          filled: true,
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.menu),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
          )
        ),
      ),
    );
  }
}
