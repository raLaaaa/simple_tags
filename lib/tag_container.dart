import 'package:flutter/cupertino.dart';

class TagContainer extends StatefulWidget {
  final String tag;
  final EdgeInsets? tagContainerPadding;
  final EdgeInsets? tagContainerMargin;
  final TextStyle? tagTextStyle;

  final int? tagTextMaxLines;
  final TextOverflow? tagTextOverflow;
  final TextAlign? tagTextAlign;
  final bool? tagTextSoftWrap;
  final Locale? tagTextLocale;

  final GestureTapCallback? onPressed;
  final GestureTapCallback? onLongPressed;
  final GestureTapCallback? onDoubleTap;
  final Icon? tagIcon;
  final BoxDecoration? tagContainerDecoration;

  TagContainer(
      {Key? key,
      required this.tag,
      this.onPressed,
      this.onDoubleTap,
      this.onLongPressed,
      this.tagIcon,
      this.tagContainerMargin,
      this.tagContainerPadding,
      this.tagTextStyle,
      this.tagTextMaxLines,
      this.tagTextOverflow,
      this.tagTextAlign,
      this.tagTextLocale,
      this.tagTextSoftWrap,
      this.tagContainerDecoration})
      : super(key: key);

  @override
  _TagContainerState createState() => _TagContainerState();
}

class _TagContainerState extends State<TagContainer>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  static const int _fadeDuration = 450;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        duration: const Duration(milliseconds: _fadeDuration), vsync: this);
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: GestureDetector(
        onTap: widget.onPressed,
        onDoubleTap: widget.onDoubleTap,
        onLongPress: widget.onLongPressed,
        child: Container(
          margin: widget.tagContainerMargin,
          padding: widget.tagContainerPadding,
          decoration: widget.tagContainerDecoration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.tag,
                style: widget.tagTextStyle,
                maxLines: widget.tagTextMaxLines,
                overflow: widget.tagTextOverflow,
                textAlign: widget.tagTextAlign,
                softWrap: widget.tagTextSoftWrap,
                locale: widget.tagTextLocale,
              ),
              widget.tagIcon != null ? widget.tagIcon! : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
