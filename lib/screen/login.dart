import 'package:flutter/material.dart';

final TextEditingController _email = TextEditingController();
final TextEditingController _password = TextEditingController();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Image(image: AssetImage("assets/images/register.png")),
              ),
              const Center(
                  child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.only(right: 10, left: 10),
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('UserName'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _email,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        hintText: 'Enter a password',
                        suffixIcon: Icon(
                          Icons.person_2_sharp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(right: 10, left: 10),
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Password'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _password,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        hintText: 'Enter a password',
                        suffixIcon: Icon(
                          Icons.lock_person,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(278, 37),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: const Color(0xffB28CFF)),
                  child: const Text(' Login '),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(
                    context,
                    'register',
                  )
                },
                child: const Text("Don't Have account? SignUp Now "),
              )
            ],
          ),
        ),
      ),
    );
  }
}
