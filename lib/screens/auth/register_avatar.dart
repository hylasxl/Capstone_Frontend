import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:syncio_capstone/grpc_client/generated/auth/auth.pbgrpc.dart';
import 'package:syncio_capstone/grpc_client/grpc_client.dart';
import 'package:syncio_capstone/grpc_client/services/auth.service.dart';
import 'package:syncio_capstone/widgets/register_form.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncio_capstone/grpc_client/generated/google/protobuf/timestamp.pb.dart';

class RegisterAvatar extends StatefulWidget {
  const RegisterAvatar({super.key});

  @override
  State<RegisterAvatar> createState() => RegisterAvatarState();
}

class RegisterAvatarState extends State<RegisterAvatar> {
  bool _showSnackBar = false;
  String? _snackBarText;
  XFile? _avatarImage;
  late AuthService _authService;
  bool _isLoading = false;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    final grpcClient = GrpcClient();
    _authService = AuthService(grpcClient);
  }

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _avatarImage = pickedFile;
      });
    } else {
      if (!mounted) return;
      _showFloatingSnackBar(AppLocalizations.of(context)!.nimgs);
      _avatarImage = null;
    }
  }

  Future<void> _handleNext(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? firstName = prefs.getString('firstName');
    String? lastName = prefs.getString('lastName');
    String? birthdayTimestamp = prefs.getString('selectedBirthday');
    String? email = prefs.getString('email');
    String? gender = prefs.getString('gender');
    String? password = prefs.getString('password');
    String? username = prefs.getString('username');

    DateTime birthday = DateTime.parse(birthdayTimestamp!);
    List<int>? avatarBytes = await _getAvatarBytes();

    try {
      final SignupRequest request = SignupRequest()
        ..avatar = avatarBytes!
        ..birthday = Timestamp.fromDateTime(birthday)
        ..email = email!
        ..firstName = firstName!
        ..lastName = lastName!
        ..gender = gender!
        ..password = password!
        ..username = username!;

      final SignUpResponse response = await _authService.signup(request);
      if (response.errorCode.isNotEmpty) {
        String messageError =
            _getMessageError(response.errorCode.toLowerCase());
        _showFloatingSnackBar(toBeginningOfSentenceCase(messageError));
        return;
      } else {
        if (!context.mounted) return;
        _showFloatingSnackBar(AppLocalizations.of(context)!.rs);
        await Future.delayed(Duration(seconds: 2));
        if (!context.mounted) return;
        Navigator.of(context).popUntil((page) => page.isFirst);
      }
    } catch (e) {
      if (!context.mounted) return;
      _showFloatingSnackBar(
          toBeginningOfSentenceCase(AppLocalizations.of(context)!.re));
      return;
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  String _getMessageError(String errorCode) {
    switch (errorCode) {
      case 're01':
        return AppLocalizations.of(context)!.re01;
      case 'mysqldbe01':
        return AppLocalizations.of(context)!.mysqldbe01;
      case 're02':
        return AppLocalizations.of(context)!.re02;
      case 're03':
        return AppLocalizations.of(context)!.re03;
      case 'se01':
        return AppLocalizations.of(context)!.se01;
      case 're04':
        return AppLocalizations.of(context)!.re04;
      case 'aue':
        return AppLocalizations.of(context)!.aue;
      case 're05':
        return AppLocalizations.of(context)!.re05;
      case 're06':
        return AppLocalizations.of(context)!.re06;
      case 'mysqldbe02':
        return AppLocalizations.of(context)!.mysqldbe02;
      default:
        return AppLocalizations.of(context)!.re;
    }
  }

  Future<List<int>?> _getAvatarBytes() async {
    if (_avatarImage != null) {
      File imageFile = File(_avatarImage!.path);
      List<int> imageBytes = await imageFile.readAsBytes();
      return imageBytes;
    }
    return null;
  }

  void _showFloatingSnackBar(String message) {
    setState(() {
      _showSnackBar = true;
      _snackBarText = message;
    });

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _showSnackBar = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.1,
              left: 16,
              right: 16,
              bottom: 16,
            ),
            child: RegisterForm(
              isLoading: _isLoading,
              title: AppLocalizations.of(context)!.avt,
              desc: AppLocalizations.of(context)!.avtd,
              inputFields: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: _pickImage,
                      child: Text(AppLocalizations.of(context)!.simg),
                    ),
                  ),
                  SizedBox(height: 20),
                  _avatarImage != null
                      ? ClipOval(
                          key: ValueKey<int>(1),
                          child: Image.file(
                            File(_avatarImage!.path),
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
              onNextPress: () => _handleNext(context),
            ),
          ),
          if (_showSnackBar)
            Positioned(
              bottom: MediaQuery.of(context).viewInsets.bottom + 10,
              left: 16,
              right: 16,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _snackBarText ?? '',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
