import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncio_capstone/grpc_client/grpc_client.dart';
import 'package:syncio_capstone/providers/theme_provider.dart';
import 'package:syncio_capstone/providers/locale_provider.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:syncio_capstone/grpc_client/services/auth.service.dart';
import 'package:syncio_capstone/grpc_client/generated/auth/auth.pb.dart';
import 'package:syncio_capstone/providers/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  String? _selectedLanguage;
  late TextEditingController uctrl = TextEditingController();
  late TextEditingController pctrl = TextEditingController();
  final authProvider = Provider.of<AuthProvider>;

  late AuthService _authService;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadCurrentLanguage();
    final grpcClient = GrpcClient();
    _authService = AuthService(grpcClient);
  }

  Future<void> _loadCurrentLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedLanguage = prefs.getString('language_code') ?? "en";
    });
  }

  Future<void> _setLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language_code', languageCode);
    setState(() {
      _selectedLanguage = languageCode;
    });
  }

  Future<void> _login() async {
    final username = uctrl.text.trim();
    final password = pctrl.text.trim();

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(
          content: Text(AppLocalizations.of(context)!.peusnapw),
          duration: Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
        ));
      return;
    }
    setState(() {
      _isLoading = true;
    });
    try {
      final LoginResponse response =
          await _authService.login(username, password);
      if (response.errorCode.isNotEmpty) {
        String errorMessage = getErrorMessage(response.errorCode.toLowerCase());
        if (!mounted) return;
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
            content: Text(toBeginningOfSentenceCase(errorMessage)),
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ));
        return;
      } else {
        if (!mounted) return;
        final authProvider = Provider.of<AuthProvider>(context, listen: false);
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        String jsonRes = response.writeToJson();
        await authProvider.signIn();
        await prefs.setString('userData', jsonRes);
        await prefs.remove('firstName');
        await prefs.remove('lastName');
        await prefs.remove('selectedBirthday');
        await prefs.remove('email');
        await prefs.remove('gender');
        await prefs.remove('password');
        await prefs.remove('username');
        if (!mounted) return;
        Navigator.of(context).pushReplacementNamed('homeScreen');
      }
    } catch (e) {
      String errorMessage = getErrorMessage("lge00");
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(
          content: Text(toBeginningOfSentenceCase(errorMessage)),
          duration: Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
        ));
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  String getErrorMessage(String errorCode) {
    switch (errorCode) {
      case 'lge01':
        return AppLocalizations.of(context)!.lge01;
      case 'lge02':
        return AppLocalizations.of(context)!.lge02;
      case 'lge03':
        return AppLocalizations.of(context)!.lge03;
      case 'lge04':
        return AppLocalizations.of(context)!.lge04;
      case 'lge05':
        return AppLocalizations.of(context)!.lge05;
      case 'lge06':
        return AppLocalizations.of(context)!.lge06;
      case 'lge07':
        return AppLocalizations.of(context)!.lge07;
      default:
        return AppLocalizations.of(context)!.lge00;
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: themeProvider.toggleTheme,
            icon: themeProvider.currentTheme == ThemeMode.dark
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode),
          )
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: MediaQuery.of(context).size.width * 0.5 - 75,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedLanguage,
                  hint: const Text("Select Language"),
                  items: const [
                    DropdownMenuItem(value: "en", child: Text("English")),
                    DropdownMenuItem(value: "vi", child: Text("Tiếng Việt")),
                    DropdownMenuItem(value: "zh", child: Text("中文 (简体)")),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      _setLanguage(value);
                      localeProvider.setLocale(value);
                    }
                  },
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 16,
              right: 16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      text: AppLocalizations.of(context)!.wcbackfs,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: AppLocalizations.of(context)!.wcbackss,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 60),
                  TextField(
                    controller: uctrl,
                    decoration: InputDecoration(
                      labelText: toBeginningOfSentenceCase(
                          AppLocalizations.of(context)!.username),
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.color
                              ?.withOpacity(0.5)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: pctrl,
                    decoration: InputDecoration(
                      labelText: toBeginningOfSentenceCase(
                          AppLocalizations.of(context)!.password),
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.color
                              ?.withOpacity(0.5)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          toBeginningOfSentenceCase(
                              AppLocalizations.of(context)!.fpass),
                        ),
                      )),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _isLoading ? null : _login,
                      style: ButtonStyle(
                        textStyle: WidgetStateProperty.all(
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SFProDisplay',
                              fontSize: 20),
                        ),
                      ),
                      child: _isLoading
                          ? SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                              ),
                            )
                          : Text(
                              toBeginningOfSentenceCase(
                                  AppLocalizations.of(context)!.login),
                            ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                        ),
                      ),
                      Text(AppLocalizations.of(context)!.or.toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle login action here
                      },
                      style: ButtonStyle(
                        textStyle: WidgetStateProperty.all(
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SFProDisplay'),
                        ),
                        side: WidgetStateProperty.all(
                          BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).brightness == Brightness.light
                              ? Colors.white
                              : Color(0xFF121212),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                              'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover),
                          const SizedBox(width: 8),
                          Text(
                            AppLocalizations.of(context)!.lwgg,
                            style: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? Colors.black
                                    : Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 130),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          textStyle: WidgetStateProperty.all(
                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'SFProDisplay'),
                          ),
                          side: WidgetStateProperty.all(
                            BorderSide(color: Theme.of(context).primaryColor),
                          ),
                          backgroundColor: WidgetStateProperty.all(
                            Theme.of(context).brightness == Brightness.light
                                ? Colors.white
                                : Color(0xFF121212),
                          ),
                        ),
                        onPressed: () async {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          await prefs.remove('firstName');
                          await prefs.remove('lastName');
                          await prefs.remove('selectedBirthday');
                          await prefs.remove('email');
                          await prefs.remove('gender');
                          await prefs.remove('password');
                          await prefs.remove('username');
                          if(!context.mounted) return;
                          Navigator.of(context).pushNamed('registerUsername');
                        },
                        child: Text(
                          AppLocalizations.of(context)!.newto,
                          style: TextStyle(
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Color(0xFF04A9D7)
                                  : Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
