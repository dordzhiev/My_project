import 'package:flutter/material.dart';

class ExpandableWidget extends StatefulWidget {
  final Widget parent;
  final Widget? child;

  const ExpandableWidget({super.key, required this.parent, this.child});

  @override
  State createState() => _ExpandableWidgetState();
}

class _ExpandableWidgetState extends State<ExpandableWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightFactor;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _heightFactor = _controller.drive(CurveTween(curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: _toggleExpand,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.parent,
              Icon(
                _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 30,
              ),
            ],
          ),
        ),
        if (widget.child != null)
          LayoutBuilder(builder: (context, constraints) {
            return AnimatedBuilder(
              animation: _heightFactor,
              builder: (context, child) {
                return SizedBox(
                  height: _heightFactor.value * 100,
                  child: widget.child,
                );
              },
            );
          }),
      ],
    );
  }
}
