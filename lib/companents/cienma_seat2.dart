
import 'package:flutter/material.dart';

import  '../screens/const.dart';

class CienmaSeat extends StatefulWidget {
  final bool isReserved;
  final Function(bool) onSelected;

  const CienmaSeat({
    required this.isReserved,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  _CienmaSeatState createState() => _CienmaSeatState();
}

class _CienmaSeatState extends State<CienmaSeat> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;

          // Call the onSelected callback function with the updated selected state
          widget.onSelected(_isSelected);
        });
      },
      child: Container(
        width: 35,
        height: 35,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: widget.isReserved
              ? Colors.grey.shade400
              : _isSelected
              ? Colors.yellowAccent
              : Colors.white12,
          border: Border.all(
            color: Colors.grey.shade400,
            width: 1,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
      ),
    );
  }
}