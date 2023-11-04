import 'package:courier_app/common/graphql/fragments/personal_info.graphql.dart';
import 'package:courier_app/providers/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _middleNameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _emailController;
  Fragment$PersonalInfo? personalInfo;
  bool _isEditing = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _middleNameController.dispose();
    _phoneNumberController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _toggleEdit() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  void _saveChanges() async {
    if (personalInfo == null || _isLoading) return;
    _isLoading = true;
    personalInfo = personalInfo?.copyWith(
      username: personalInfo?.username,
      firstname: _firstNameController.text.isNotEmpty
          ? _firstNameController.text
          : null,
      lastname:
          _lastNameController.text.isNotEmpty ? _lastNameController.text : null,
      middlename: _middleNameController.text.isNotEmpty
          ? _middleNameController.text
          : null,
      phoneNumber: _phoneNumberController.text.isNotEmpty
          ? _phoneNumberController.text
          : null,
      email:
          _emailController.text.isNotEmpty ? _emailController.text : null,
    );
    try {
      final profileProvider = context.read<ProfileProvider>();
      await profileProvider.updatePersonalInfo(personalInfo!);
    } catch (e) {
      ScaffoldMessenger.maybeOf(context)
          ?.showSnackBar(SnackBar(content: Text(e.toString())));
      return;
    }
    setState(() {
      _isLoading = false;
      _isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    personalInfo = context.select<ProfileProvider, Fragment$PersonalInfo?>(
        (value) => value.personalInfo);
    _firstNameController =
        TextEditingController(text: personalInfo?.firstname ?? '');
    _lastNameController =
        TextEditingController(text: personalInfo?.lastname ?? '');
    _middleNameController =
        TextEditingController(text: personalInfo?.middlename ?? '');
    _phoneNumberController =
        TextEditingController(text: personalInfo?.phoneNumber ?? '');
    _emailController = TextEditingController(text: personalInfo?.email ?? '');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Личная информация', overflow: TextOverflow.clip),
        actions: [
          IconButton(
            icon: Icon(_isEditing ? Icons.check : Icons.edit),
            onPressed: _isEditing ? _saveChanges : _toggleEdit,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        children: [
          _buildTextField(
            controller: _lastNameController,
            label: 'Фамилия',
            isEnabled: _isEditing,
          ),
          _buildTextField(
            controller: _firstNameController,
            label: 'Имя',
            isEnabled: _isEditing,
          ),
          _buildTextField(
            controller: _middleNameController,
            label: 'Отчество',
            isEnabled: _isEditing,
          ),
          _buildTextField(
            controller: _phoneNumberController,
            label: 'Номер телефона',
            isEnabled: _isEditing,
          ),
          _buildTextField(
            controller: _emailController,
            label: 'Email',
            isEnabled: _isEditing,
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required bool isEnabled,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        enabled: isEnabled,
      ),
      enabled: isEnabled,
    );
  }
}
