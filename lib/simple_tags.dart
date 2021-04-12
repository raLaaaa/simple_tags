library simple_tags;

import 'package:flutter/cupertino.dart';
import 'package:simple_tags/tag_container.dart';

class SimpleTags extends StatelessWidget {
  final List<String> content;
  final GestureTapCallback onTagPress;

  final BoxDecoration tagContainerDecoration;
  final Widget tagIcon;
  final EdgeInsets tagContainerPadding;
  final EdgeInsets tagContainerMargin;
  final TextStyle tagTextStyle;

  final WrapCrossAlignment wrapCrossAxisAlignment;
  final WrapAlignment wrapAlignment;
  final double wrapRunSpacing;
  final double wrapSpacing;
  final WrapAlignment wrapRunAlignment;
  final Axis wrapDirection;
  final TextDirection wrapTextDirection;
  final Clip wrapClipBehavior;
  final VerticalDirection wrapVerticalDirection;

  SimpleTags(
      {Key key,
      @required this.content,
      this.onTagPress,
      this.tagContainerDecoration,
      this.tagIcon,
      this.tagContainerPadding = EdgeInsets.zero,
      this.tagContainerMargin = EdgeInsets.zero,
      this.tagTextStyle,
      this.wrapCrossAxisAlignment = WrapCrossAlignment.start,
      this.wrapAlignment = WrapAlignment.start,
      this.wrapRunSpacing = 0,
      this.wrapRunAlignment = WrapAlignment.start,
      this.wrapDirection = Axis.horizontal,
      this.wrapSpacing = 0,
      this.wrapTextDirection,
      this.wrapClipBehavior = Clip.none,
      this.wrapVerticalDirection = VerticalDirection.down})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        crossAxisAlignment: wrapCrossAxisAlignment,
        alignment: wrapAlignment,
        runSpacing: wrapRunSpacing,
        runAlignment: wrapRunAlignment,
        direction: wrapDirection,
        spacing: wrapSpacing,
        textDirection: wrapTextDirection,
        clipBehavior: wrapClipBehavior,
        verticalDirection: wrapVerticalDirection,
        children: _buildTagContent());
  }

  List<Widget> _buildTagContent() {
    List<Widget> toReturn = [];

    if (content.isNotEmpty) {
      content.forEach((element) {
        toReturn.add(TagContainer(
          tag: element,
          tagContainerDecoration: tagContainerDecoration,
          tagContainerMargin: tagContainerMargin,
          tagContainerPadding: tagContainerPadding,
          tagIcon: tagIcon,
          tagTextStyle: tagTextStyle,
          onPressed: () {},
        ));
      });
    }

    return toReturn;
  }
}
