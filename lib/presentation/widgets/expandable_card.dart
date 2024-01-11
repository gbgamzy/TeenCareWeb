import 'package:flutter/material.dart';

class ExpandableCard extends StatefulWidget {
  final String title;
  final String subTitle;

  const ExpandableCard({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  State<ExpandableCard> createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool isExpanded = false;

  final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    side: const BorderSide(
      color: Color(0xFFE5E5E5),
      width: 1.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ExpansionTile(
        shape: cardShape,
        collapsedShape: cardShape,
        title: Text(widget.title),
        trailing: isExpanded ? const Icon(Icons.remove) : const Icon(Icons.add),
        onExpansionChanged: (value) {
          setState(() {
            isExpanded = value;
          });
        },
        expandedAlignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 15,
            ),
            child: Text(widget.subTitle, textAlign: TextAlign.start,),
          )
        ],
      ),
    );
  }
}