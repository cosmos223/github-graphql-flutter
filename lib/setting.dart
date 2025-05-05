import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  Setting(this.accessToken, {super.key});
  String? accessToken;

  @override
  State<Setting> createState() => _Setting(accessToken);
}

class _Setting extends State<Setting> {
  _Setting(this.accessToken);
  String? accessToken;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: [
          IconButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setString("accessToken", accessToken!);
                  Navigator.pop(context);
                }
              }, 
              icon: Icon(Icons.save))
        ],
      ),
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
      body: Form(
        key: _formKey,
        child: SettingsList(
        // platform: selectedPlatform,
          sections: [
            SettingsSection(
              tiles: [
                CustomSettingsTile(
                    child: TextFormField(
                      onSaved: (value) => accessToken = value!,
                      initialValue: accessToken,
                      decoration: const InputDecoration(
                          labelText: 'GitHub Personal Access Token',
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.key)
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter access token';
                        }
                        return null;
                      },
                    )
                )
              ]
            )
        ],
      ),
      ),
    );
  }
}