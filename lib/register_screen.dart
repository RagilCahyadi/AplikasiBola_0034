import 'package:flutter/material.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _globalKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _alamatController = TextEditingController();
  final _noteleponController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool isObscureA = true;
  bool isObscureB = true;
  String groupValue = 'Laki-Laki';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(16.0),
          child: Column(
            children: [
              Text(
                'Selamat Datang Mancunian!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Silahkan daftar untuk melanjutkan ke aplikasi Manchester United Official.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Flexible(
                child: SingleChildScrollView(
                  child: Form(
                    key: _globalKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _namaController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Nama',
                            hintText: 'Masukkan nama anda',
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          controller: _alamatController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your address';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Alamat',
                            hintText: 'Masukkan alamat anda',
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          controller: _noteleponController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your telephone number';
                            } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                              return 'Enter using number';
                            } else if (value.length < 11) {
                              return 'Please enter valid number';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'No.Telepon',
                            hintText: 'Masukkan no.telepon anda',
                          ),
                        ),
                        SizedBox(height: 15),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Jenis Kelamin'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: 'Laki-Laki',
                              // ignore: deprecated_member_use
                              groupValue: groupValue,
                              // ignore: deprecated_member_use
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value!;
                                });
                              },
                            ),
                            Text('Laki-Laki'),
                            Radio(
                              value: 'Perempuan',
                              // ignore: deprecated_member_use
                              groupValue: groupValue,
                              // ignore: deprecated_member_use,
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value!;
                                });
                              },
                            ),
                            Text('Perempuan'),
                          ],
                        ),
                  
                        SizedBox(height: 15),
                  
                        TextFormField(
                          controller: _emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            } else if (!value.contains('@')) {
                              return 'Please enter a valid email address';
                            } else if (!value.contains('gmail.com')) {
                              return 'Email harus berakhiran @gmail.com';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Masukkan email anda',
                          ),
                        ),
                  
                        SizedBox(height: 15),
                  
                        TextFormField(
                          controller: _passwordController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters long';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isObscureA,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Masukkan password anda',
                            suffixIcon: IconButton(
                              icon: Icon(
                                isObscureA ? Icons.visibility_off : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  isObscureA = !isObscureA;
                                });
                              },
                            ),
                          ),
                        ),
                  
                        SizedBox(height: 15),
                  
                        TextFormField(
                          controller: _confirmPasswordController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your confirm password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters long';
                            } else if (value != _passwordController.text) {
                              return 'Password must be match';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isObscureB,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            hintText: 'Masukkan confirm password anda',
                            suffixIcon: IconButton(
                              icon: Icon(
                                isObscureB ? Icons.visibility_off : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  isObscureB = !isObscureB;
                                });
                              },
                            ),
                          ),
                        ),
                  
                        SizedBox(height: 30),
                  
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_globalKey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                            ),
                            child: Text(
                              'Daftar',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                  
                        SizedBox(height: 20),
                  
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Apakah sudah punya akun?'),
                              TextButton(
                                onPressed: (){
                                  Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => LoginScreen()));
                                }, 
                                child: Text(
                                  'Masuk disini!',
                                  style: TextStyle(
                                    color: Colors.lightBlue
                                  ),
                                ))
                            ],
                          )
                      ],
                    ),
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
