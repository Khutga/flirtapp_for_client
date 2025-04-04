import 'package:flirt_coach/localStorage/user_local.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/index.dart';
import '../theme/app_colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FocusNode _nameFocusNode = FocusNode();
  final TextEditingController _nameController = TextEditingController();
  String tempName = '';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final name = await getName();
    setState(() {
      tempName = name;
      _nameController.text = name;
    });
  }

  Future<String> getName() async {
    return await UserLocal().getUserValue();
  }

  Future<void> setName() async {
    UserLocal().setUserValue(_nameController.text);
  }

  @override
  void dispose() {
    _nameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var darkMode =
        Provider.of<ThemeProvider>(context, listen: false).isDarkMode;
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          _nameFocusNode.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
            centerTitle: true,
            title: const Text('Profile'),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: ListView(
                children: [
                  const SizedBox(height: 64),
                  CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.grey.shade300,
                    child:
                        const Icon(Icons.person, color: Colors.grey, size: 100),
                  ),
                  const SizedBox(height: 32),
                  TextField(
                    controller: _nameController,
                    focusNode:
                        _nameFocusNode, // Assign the FocusNode to the TextField
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: 'Enter your name',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      labelText: 'Name',
                      labelStyle: const TextStyle(
                        color: Colors.grey, // Changed to gray
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 64),
                  ElevatedButton(
                    onPressed: () {
                      setName();
                      if(_nameController.text.isNotEmpty) {
                        Navigator.pushNamed(context, 'conversation_screen');
                      }else{
                          const snackbarStyle = SnackBar(
                            content: Center(child: Text('Name input cannot be empty !', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16))),
                            backgroundColor: Colors.red,
                            elevation: 10,
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.all(16),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbarStyle);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor:
                          darkMode ? Colors.deepPurple : AppColors.lightPrimary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
