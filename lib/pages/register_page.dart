import 'package:card_app/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _nameCtl = TextEditingController();
  final _kesibiCtl = TextEditingController();
  final _phoneCtl = TextEditingController();
  final _gmailCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nameCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Аты-Жону",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Сураныч Аты-Жонунузду жазыныз ... ';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 22),
              TextFormField(
                controller: _kesibiCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Кесиби",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Сураныч Кесибинизди жазыныз ... ';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 22),
              TextFormField(
                controller: _phoneCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Телефон номер",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Сураныч Телефон номеринизди жазыныз ... ';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 22),
              TextFormField(
                controller: _gmailCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Gmail",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Сураныч Gmail почтанызды жазыныз ... ';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: 180,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            name: _nameCtl.text,
                            kesibi: _kesibiCtl.text,
                            phone: _phoneCtl.text,
                            gmail: _gmailCtl.text,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Сураныч бош калган жерлерди толтурунуз ... ',
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    "Сактоо",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
