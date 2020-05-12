import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Implements a single application page's layout.
///
/// The scaffold lays out the navigation bar on top and the content between or
/// behind the navigation bar.
///
class BasePageScaffold extends StatefulWidget {
  /// Creates a layout for pages with a navigation bar at the top.
  const BasePageScaffold({
    Key key,
    this.title,
    this.actions,
    this.backgroundColor,
    this.hideLeading = false,
    this.resizeToAvoidBottomInset = true,
    this.headerWidget,
    this.headerBgColor,
    this.headerTextColor,
    this.brightness = Brightness.light,
    @required this.child,
  })  : assert(child != null),
        assert(resizeToAvoidBottomInset != null),
        super(key: key);

  /// Widget to show in the main content area.
  final Widget child;

  final Brightness brightness;

  final List<Widget> actions;

  final String title;
  final bool hideLeading;

  final Color backgroundColor;

  final Widget headerWidget;
  final Color headerBgColor;
  final Color headerTextColor;

  final bool resizeToAvoidBottomInset;

  @override
  _BasePageScaffoldState createState() => _BasePageScaffoldState();
}

class _BasePageScaffoldState extends State<BasePageScaffold> {
  Widget _buildMaterialScaffold(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = widget.brightness == Brightness.dark;
    return Container(
      color: theme.scaffoldBackgroundColor,
      child: SafeArea(
        top: false,
        maintainBottomViewPadding: true,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: !widget.hideLeading,
            centerTitle: false,
            title: widget.headerWidget ?? Text(widget.title),
            actions: widget.actions,
            iconTheme: IconThemeData(
              color: isDark ? Colors.white : Color(0xFF333333),
            ),
            actionsIconTheme: IconThemeData(
              color: isDark ? Colors.white : Color(0xFF333333),
            ),
            textTheme: TextTheme(
              headline6: Theme.of(context).textTheme.headline6.copyWith(
                    color: isDark ? Colors.white : Color(0xFF333333),
                  ),
            ),
            backgroundColor: widget.headerBgColor,
            brightness: widget.brightness,
          ),
          body: widget.child,
          backgroundColor: widget.backgroundColor ?? theme.backgroundColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;
    switch (platform) {
      case TargetPlatform.android:
        return _buildMaterialScaffold(context);
      default:
        return _buildMaterialScaffold(context);
    }
  }
}
