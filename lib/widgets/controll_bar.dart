import 'package:flutter/material.dart';
import 'package:syncio_capstone/providers/theme_provider.dart';
import 'package:provider/provider.dart';


class ControllBar extends StatelessWidget implements PreferredSizeWidget {
  const ControllBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: themeProvider.currentTheme == ThemeMode.dark
                ? Colors.white54
                : Colors.black45,
            width: 1.0,
            style: BorderStyle.solid  
          ),
        ),
      ),
      child: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Transform.translate(
            offset: Offset(-40, 0),
            child: Image.asset(
              "assets/icon/branding.png",
              width: 200,
              height: 112.5,
              fit: BoxFit.contain,
            )),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
