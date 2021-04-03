
import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';





class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController;
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _repasswordController;
  TextEditingController _newPasswordController;

  // Initially password is obscure
  bool isSubmitting = false;
  // Toggles the password show status
  bool _obscureText = true;
  void _togglePasswordStatus() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
    _repasswordController = TextEditingController(text: "");
    _newPasswordController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    Widget title = Text(
      'Glad To Meet You',
      style: TextStyle(
          color: Colors.white,
          fontSize: 34.0,
          fontWeight: FontWeight.bold,
          shadows: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              offset: Offset(0, 5),
              blurRadius: 10.0,
            )
          ]),
    );

    Widget subTitle = Padding(
        padding: const EdgeInsets.only(right: 56.0),
        child: Text(
          'First Time ? Create your new account for future uses.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ));

    Widget registerButton = Positioned(
      left: MediaQuery.of(context).size.width / 4,
      bottom: 180,
      child: MaterialButton(
        onPressed: (){},

        // () async {
        //   if (_emailController.text.isEmpty ||
        //       _passwordController.text.isEmpty) {
        //     print("Email and password cannot be empty");
        //     return;
        //   }
        //   if (_repasswordController.text.isEmpty ||
        //       _passwordController.text != _repasswordController.text) {
        //     print("confirm password does not match");
        //     return;
        //   }
        //   try {
        //     final user = await AuthHelper.signupWithEmail(
        //         email: _emailController.text,
        //         password: _passwordController.text);
        //     if (user != null) {
        //       print("signup successful");
        //       Navigator.of(context).pushNamed(AppRoutes.verifyscree);
        //       // Navigator.pop(context);
        //     }
        //   } catch (e) {
        //     print(e);
        //   }
        // },
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 80,
          child: Center(
              child: new Text("Register",
                  style: const TextStyle(
                      color: const Color(0xfffefefe),
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0))),
          decoration: BoxDecoration(
              gradient: mainButton,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  offset: Offset(0, 5),
                  blurRadius: 10.0,
                )
              ],
              borderRadius: BorderRadius.circular(9.0)),
        ),
      ),
    );

    Widget registerForm = Container(
      height: 520,
      child: Stack(
        children: <Widget>[
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 32.0, right: 12.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.8),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextFormField(
                      autofillHints: [AutofillHints.username],

                      // enabled: isSubmitting,
                      cursorColor: Colors.black87,
                      controller: _usernameController,
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black87,
                          )),
                          icon: const Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: const Icon(
                              Icons.person,
                              size: 20,
                              color: Colors.black87,
                            ),
                          ),
                          hintText: 'John Doe',
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Colors.black87,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.white,
                          )),
                    )),

                Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextFormField(
                      autofillHints: [AutofillHints.email],
                      // enabled: isSubmitting,
                      cursorColor: Colors.black87,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black87,
                          )),
                          icon: const Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: const Icon(
                              Icons.alternate_email_outlined,
                              size: 20,
                              color: Colors.black87,
                            ),
                          ),
                          hintText: '@somethingexample.com',
                          labelText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.black87,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.black87,
                          )),
                    )),

                // child: TextField(
                //   controller: email,
                //   style: TextStyle(fontSize: 16.0),
                // ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextFormField(
                    cursorColor: Colors.black87,
                    // enabled: isSubmitting,
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black87,
                        )),
                        icon: const Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: const Icon(
                            Icons.lock,
                            size: 20,
                            color: Colors.black87,
                          ),
                        ),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 20,
                            color: Colors.black87,
                          ),
                          onPressed: _togglePasswordStatus,
                          color: Colors.black87,
                        ),
                        labelText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.black87,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.black87,
                        )),
                    validator: (val) {
                      return val.length < 6
                          ? 'Enter A Password Longer Than 6 Characters'
                          : null;
                    },
                    obscureText: _obscureText,
                  ),

                  // child: TextField(
                  //   controller: password,
                  //   style: TextStyle(fontSize: 16.0),
                  //   obscureText: true,
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextFormField(
                    cursorColor: Colors.black87,
                    // enabled: isSubmitting,
                    controller: _repasswordController,
                    keyboardType: TextInputType.visiblePassword,

                    style: TextStyle(
                      color: Colors.black87,
                    ),
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black87,
                        )),
                        icon: const Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: const Icon(
                            Icons.lock,
                            size: 20,
                            color: Colors.black87,
                          ),
                        ),
                        hintText: 'Re-enter Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 20,
                            color: Colors.black87,
                          ),
                          onPressed: _togglePasswordStatus,
                          color: Colors.black87,
                        ),
                        labelText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.black87,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.black87,
                        )),
                    validator: (val) {
                      return val.length < 6
                          ? 'Enter A Password Longer Than 6 Characters'
                          : null;
                    },
                    obscureText: _obscureText,
                  ),

                  // TextField(
                  //   controller: cmfPassword,
                  //   style: TextStyle(fontSize: 16.0),
                  //   obscureText: true,
                  // ),
                ),
              ],
            ),
          ),
          registerButton,
        ],
      ),
    );

    Widget socialRegister = Column(
      children: <Widget>[
        Text(
          'You can sign in with',
          style: TextStyle(
              fontSize: 12.0, fontStyle: FontStyle.italic, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: FaIcon(FontAwesomeIcons.facebook),
              onPressed: () {},
              color: Colors.lightBlue,
              // Icon(Icons.find_replace),
              // onPressed: () {},
              // color: Colors.white,
            ),
            IconButton(
                icon: FaIcon(FontAwesomeIcons.yahoo),
                onPressed: () {},
                color: Colors.purple),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.twitter,
              ),
              onPressed: () {},
              color: Colors.lightBlueAccent,
            ),
          ],
        )
      ],
    );

    return Scaffold(

      body: Stack(
        key: _formKey,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/alex.gif'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
              color: transparentYellow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Spacer(flex: 3),
                title,
                Spacer(),
                subTitle,
                Spacer(flex: 2),
                registerForm,
                Spacer(flex: 2),
                Padding(
                    padding: EdgeInsets.only(bottom: 20), child: socialRegister)
              ],
            ),
          ),
          Positioned(
            top: 35,
            left: 5,
            child: IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
