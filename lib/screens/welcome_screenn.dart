
import 'package:flutter/material.dart';
import 'package:project_medical/screens/welcome_screen.dart';
import 'package:project_medical/screens/home_screen.dart';
import 'package:project_medical/colors.dart';

class dForm extends StatefulWidget {
  const dForm({Key? key}) : super(key: key);

  @override
  _dFormState createState() => _dFormState();
}

class _dFormState extends State<dForm> {
// test controllers
  final  _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
   /* final databaseReference  = FirebaseFirestore.instance;
    await Firebase.instance.signInWithEmailAndPassword(
      username : _usernameController.text.trim(),
      email : _emailController.text.trim(),
      password : _passwordController.text.trim(),
    );  */
  }
  final _formKey = GlobalKey<FormState>();
  String _userName = '';
  String _email = '';
  String _pswd= '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Do something with the form data
      print('Fish Pond Name: $_userName');
      print('Effectif: $_email');
      print('Average Weight: $_pswd');
      // Navigate back to previous screen
      Navigator.pop(context);
    }
  }

  @override
  void dispose(){
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.indigoAccent,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Add Username',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.indigoAccent),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(24.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      controller: _usernameController ,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 16),
                          hintText: 'Enter Username',
                          prefixIcon: Icon(Icons.person , color: Colors.black38,)
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _userName = value!;
                      },
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      controller: _emailController ,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 16),
                          hintText: 'Enter Email',
                          prefixIcon: Icon(Icons.email, color: Colors.black38,)
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                    SizedBox(height: 16.0),
                    //_pswd
                    Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      controller: _passwordController ,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 16),
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.lock, color: Colors.black38,)
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _pswd = value!;
                      },
                    ),
                    SizedBox(height: 8.0),
                    Text("Forgot Password ? ",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 40.0),
                  /*   Center(
                      child: Container(
                        width: double.infinity, // Set the width to the width of its parent container
                        margin: EdgeInsets.symmetric(horizontal: 30.0),
                        child: ElevatedButton(
                          // onLongPress: signIn() {}, WelcomeScreenn()
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              backgroundColor: Colors.indigoAccent),
                          onPressed: WelcomeScreen(),
                          child: Text('Done'),
                        ),
                      ),
                    ), */

                  Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },

                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "Done",
                          style: TextStyle(
                            color: iColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
