library simple_tags;

import 'package:flutter/cupertino.dart';
import 'package:simple_tags/tag_container.dart';

class SimpleTags extends StatelessWidget {
  /// List of Strings which are displayed by the package.
  final List<String> content;

  /// Function which gets called by pressing on a tag.
  final Function(String)? onTagPress;

  /// Function which gets called by a double tap on a tag.
  final Function(String)? onTagDoubleTap;

  /// Function which gets called by a long press on a tag.
  final Function(String)? onTagLongPress;

  /// Specifies the decoration for the tag container.
  final BoxDecoration? tagContainerDecoration;

  /// Specifies whether there is a trailing widget inside the tag container.
  /// If this is `null` no widget will be displayed.
  final Widget? tagIcon;

  /// Specifies the padding of the tag container.
  final EdgeInsets tagContainerPadding;

  /// Specifies the margin of the tag container.
  final EdgeInsets tagContainerMargin;

  /// Specifies the Textstyle widget for the tag.
  final TextStyle? tagTextStyle;

  /// Specifies the max lines for the tag text.
  final int? tagTextMaxlines;

  /// Specifies the overflow for the tag text.
  final TextOverflow? tagTextOverflow;

  /// Specifies the text align for the tag text.
  final TextAlign? tagTextAlign;

  /// Specifies the softwrapping for the tag text.
  final bool? tagTextSoftWrap;

  /// Specifies the locale for the tag text.
  final Locale? tagTextLocale;

  /// See `WrapCrossAlignment`
  final WrapCrossAlignment wrapCrossAxisAlignment;

  /// See `WrapAlignment`
  final WrapAlignment wrapAlignment;

  /// See `Wrap`
  final double wrapRunSpacing;

  /// See `Wrap`
  final double wrapSpacing;

  /// See `WrapAlignment`
  final WrapAlignment wrapRunAlignment;

  /// See `Axis`
  final Axis wrapDirection;

  /// See `TextDirection`
  final TextDirection? wrapTextDirection;

  /// See `Clip`
  final Clip wrapClipBehavior;

  /// See `VerticalDirection`
  final VerticalDirection wrapVerticalDirection;

  SimpleTags(
      {Key? key,
      required this.content,
      this.onTagPress,
      this.onTagDoubleTap,
      this.onTagLongPress,
      this.tagContainerDecoration,
      this.tagIcon,
      this.tagContainerPadding = EdgeInsets.zero,
      this.tagContainerMargin = EdgeInsets.zero,
      this.tagTextStyle,
      this.tagTextSoftWrap,
      this.tagTextAlign,
      this.tagTextOverflow,
      this.tagTextMaxlines,
      this.tagTextLocale,
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
      content.forEach((tag) {
        toReturn.add(TagContainer(
          tag: tag,
          tagContainerDecoration: tagContainerDecoration,
          tagContainerMargin: tagContainerMargin,
          tagContainerPadding: tagContainerPadding,
          tagIcon: tagIcon as Icon?,
          tagTextStyle: tagTextStyle,
          tagTextAlign: tagTextAlign,
          tagTextLocale: tagTextLocale,
          tagTextOverflow: tagTextOverflow,
          tagTextMaxLines: tagTextMaxlines,
          tagTextSoftWrap: tagTextSoftWrap,
          onPressed: () {
            if (onTagPress != null) {
              onTagPress!(tag);
            }
          },
          onLongPressed: () {
            if (onTagLongPress != null) {
              onTagLongPress!(tag);
            }
          },
          onDoubleTap: () {
            if (onTagDoubleTap != null) {
              onTagDoubleTap!(tag);
            }
          },
        ));
      });
    }

    return toReturn;
  }
}
