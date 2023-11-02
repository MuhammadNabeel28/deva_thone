import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String selectedValue = 'Male';
// final user = FirebaseAuth.instance.currentUser;
// final TextEditingController _username = TextEditingController();
// final TextEditingController _email = TextEditingController();
// final TextEditingController _password = TextEditingController();
String selectedOption = selectedValue;
//final FirebaseAuth _auth = FirebaseAuth.instance;

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String _fullname = "";
  String _email = "";
  String _password = "";
  bool _isdoctor = false;

  void handleRadioValueChange(String value) {
    setState(() {
      selectedValue = value;
    });
  }

  Future<void> register() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email.toString(),
        password: _password.toString(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, top: 100),
                // height: 186,
                // width: 186,
                child: const Image(
                  image: AssetImage(
                    'assets/images/register.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                  'Registration',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 29),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(right: 295),
                child: const Text(
                  'Your Name',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(right: 10, left: 10),
                width: 500,
                child: TextFormField(
                  key: const ValueKey('fullname'),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    hintText: 'Enter a name',
                    suffixIcon: Icon(
                      Icons.person_2_sharp,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter fullname';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      _fullname = value!;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(right: 295),
                child: const Text(
                  'Your Email',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(right: 10, left: 10),
                width: 500,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    hintText: 'Enter a email',
                    suffixIcon: Icon(
                      Icons.email_sharp,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(right: 273),
                child: const Text(
                  'Your Password',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(right: 10, left: 10),
                width: 500,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    hintText: 'Enter a password',
                    suffixIcon: Icon(
                      Icons.lock_person,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Radio(
                    value: 'Female',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      handleRadioValueChange('Female');
                    },
                  ),
                  const Text(
                    'Patient',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Radio(
                    value: 'Male',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      handleRadioValueChange('Male');
                    },
                  ),
                  const Text(
                    'Doctor',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      //register();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xffB28CFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(
                    context,
                    'login',
                  )
                },
                child: const Text("Don't Have account? login Now "),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Future<void> _signup() async {
//   try {
//     final UserCredential userCredential = await _auth
//         .createUserWithEmailAndPassword(
//       email: _email.text,
//       password: _password.text,
//     ).then((result) {
//       if (result.user != null) {
//         // User is signed up, you can save additional data to Firebase or perform other actions.
//         // For example, you can set the display name for the user.
//         result.user!.updateDisplayName(_username.text);
//       }
//     });
//     // Navigate to the home screen or perform other actions as needed.
//     // Navigator.pushReplacementNamed(context, 'home');
//   } catch (e) {
//     // Handle signup errors, e.g., display an error message to the user.
//     print("Error during signup: $e");
//   }
// }


//  if (user != null) {
//                     final name = _username;
//                     final email = _email;
//                     final password = _password;
//                     final uid = user!.getIdToken();
//                   }
