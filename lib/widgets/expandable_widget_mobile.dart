import 'package:flutter/material.dart';

class ExpandableWidgetMobile extends StatefulWidget {
  final String title;
  final String description;

  const ExpandableWidgetMobile({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  _ExpandableWidgetMobileState createState() => _ExpandableWidgetMobileState();
}

class _ExpandableWidgetMobileState extends State<ExpandableWidgetMobile> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: _toggleExpansion,
            child: Container(
              width: 324,
              padding: const EdgeInsets.all(16),
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
                        fontSize: 20,
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
              width: 324,
              height:100,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              decoration: const ShapeDecoration(
                color: Colors.white,
               shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(20),
  ),
),

              ),
              child: Text(
                widget.description,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
        ],
      ),
    );
  }
}


