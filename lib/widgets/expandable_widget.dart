import 'package:flutter/material.dart';

class CustomExpandableWidget extends StatefulWidget {
  final String title;
  final String description;

  const CustomExpandableWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  _CustomExpandableWidgetState createState() => _CustomExpandableWidgetState();
}

class _CustomExpandableWidgetState extends State<CustomExpandableWidget> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1500,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: _toggleExpansion,
            child: Container(
              width: 1400,
              padding: const EdgeInsets.all(20),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        color: Color(0xFF010101),
                        fontSize: 28,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded ? Icons.remove : Icons.add,
                    size: 28,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded)
            Container(
              width: 1400,
              height:100,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const ShapeDecoration(
                color: Colors.white,
               shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  ),
),

              ),
              child: Text(
                widget.description,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
