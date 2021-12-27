import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_timeline_app/provider/nav_provider.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key? key}) : super(key: key);
  final Padding = const EdgeInsets.symmetric(horizontal: 20);

  final topPadding = const EdgeInsets.only(top: 20);
  final Widget appBarLogo = const FlutterLogo(size: 40);
  final double appBarRadius = 30;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(context);
    final isCollapsed = provider.isCollapsed;

    return SizedBox(
        width: isCollapsed ? 70 : 150,
        height: 650,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(appBarRadius),
              bottomRight: Radius.circular(appBarRadius)),
          child: Drawer(
              child: Container(
            color: const Color(0xffee8f00),
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    color: Colors.white12,
                    width: double.infinity,
                    child: buildHeader(isCollapsed)),
                const Spacer(),
                buildCollapseIcon(context, isCollapsed),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
          )),
        ));
  }

  Widget buildHeader(bool isCollapsed) {
    return (isCollapsed
        ? appBarLogo
        : Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              appBarLogo,
              const SizedBox(
                width: 16,
              ),
              const Text("Flutter")
            ],
          ));
  }
}

Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
  const double size = 52;
  final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
  return Material(
    color: Colors.transparent,
    child: InkWell(
      child: Container(
        width: size,
        height: size,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      onTap: () {
        final provider =
            Provider.of<NavigationProvider>(context, listen: false);
        provider.toggleIsCollapsed();
      },
    ),
  );
}
