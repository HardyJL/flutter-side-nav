import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({
    Key? key,
    required this.child,
    required this.minWidth,
    required this.expandedWidth,
    required this.isExpandedByDefault,
    required this.expandText,
  }) : super(key: key);

  final String expandText;

  final double minWidth;

  final double expandedWidth;

  final bool isExpandedByDefault;

  final Widget child;

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  late bool _currentlyExpanded;

  @override
  void initState() {
    if (mounted) {
      _currentlyExpanded = widget.isExpandedByDefault;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _currentlyExpanded ? widget.minWidth : widget.expandedWidth,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: widget.child,
          ),
          const Divider(),
          ListTile(
            title: Text(
              _currentlyExpanded ? widget.expandText : '',
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => setState(() {
              _currentlyExpanded = !_currentlyExpanded;
            }),
          )
        ],
      ),
    );
  }
}
