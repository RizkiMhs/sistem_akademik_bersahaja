import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/utils/color.dart';

class LupaPassword extends StatefulWidget {
  @override
  _LupaPasswordState createState() => _LupaPasswordState();
}

class _LupaPasswordState extends State<LupaPassword> {
  final TextEditingController _emailController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String _message = '';
  bool _isError = false;

  void _resetPassword() async {
    String email = _emailController.text.trim();

    if (email.isEmpty) {
      setState(() {
        _message = 'Email tidak boleh kosong!';
        _isError = true;
      });
      return;
    }

    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
      setState(() {
        _message = 'Masukkan email yang valid!';
        _isError = true;
      });
      return;
    }

    try {
      await _auth.sendPasswordResetEmail(email: email);
      setState(() {
        _message = 'Link reset password telah dikirim ke email.';
        _isError = false;
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        if (e.code == 'user-not-found') {
          _message = 'Email tidak terdaftar!';
        } else {
          _message = 'Error: ${e.message}';
        }
        _isError = true;
      });
    } catch (e) {
      setState(() {
        _message = 'Terjadi kesalahan. Coba lagi nanti.';
        _isError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lupa Password'),
        backgroundColor: greencolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Masukkan email Anda untuk mengatur ulang kata sandi.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            if (_message.isNotEmpty)
              Text(
                _message,
                style: TextStyle(
                  color: _isError ? Colors.red : Colors.green,
                  fontSize: 14,
                ),
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _resetPassword,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              ),
              child: Text('Kirim Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LupaPassword(),
  ));
}
