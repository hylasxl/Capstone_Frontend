import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncio_capstone/providers/theme_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:provider/provider.dart';
import 'package:syncio_capstone/grpc_client/generated/account_user/account_user.pbgrpc.dart';
import 'package:syncio_capstone/grpc_client/grpc_client.dart';
import 'package:syncio_capstone/grpc_client/services/account_user.service.dart';
import 'package:syncio_capstone/widgets/displayed_avatar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchBarMainscreen extends StatefulWidget {
  final VoidCallback onPostPress;
  const SearchBarMainscreen({super.key, required this.onPostPress});

  @override
  State<SearchBarMainscreen> createState() => _SearchBarMainscreenState();
}

class _SearchBarMainscreenState extends State<SearchBarMainscreen> {
  late AccountUserService _accountUserService;
  String? avatarUrl;

  @override
  void initState() {
    super.initState();
    final grpclient = GrpcClient();
    _accountUserService = AccountUserService(grpclient);
    avatarUrl = null;
    fetchAvatarURL();
  }

  Future<void> fetchAvatarURL() async {
    final prefs = await SharedPreferences.getInstance();
    String? userInfo = prefs.getString('userData');

    if (userInfo != null) {
      Map<String, dynamic> userData = jsonDecode(userInfo);
      String userId = userData['3']['1'].toString();

      final GetAccountInfoResponse response =
          await _accountUserService.getAccountInfo(
        GetAccountInfoRequest()..accountId = userId,
      );

      setState(() {
        avatarUrl = response.avatar.avatarUrl;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            avatarUrl != null
                ? DisplayedAvatar(avatarUrl: avatarUrl!)
                : Skeletonizer(
                    enabled: avatarUrl == null,
                    child: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
            SizedBox(
              width: 25,
            ),
            Expanded(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: themeProvider.currentTheme == ThemeMode.dark
                    ? Color(0xFF121212)
                    : Colors.white,
                side: BorderSide(
                  color: themeProvider.currentTheme == ThemeMode.light
                      ? Color(0xFF121212).withOpacity(0.5)
                      : Colors.white,
                ),
              ),
              onPressed: widget.onPostPress,
              child: Text(
                AppLocalizations.of(context)!.snt,
                style: TextStyle(
                  color: themeProvider.currentTheme == ThemeMode.light
                      ? Color(0xFF121212).withOpacity(0.5)
                      : Colors.white,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
