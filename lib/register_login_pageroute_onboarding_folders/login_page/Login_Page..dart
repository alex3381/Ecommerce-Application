import 'package:consistency_seventh_son/register_login_pageroute_onboarding_folders/landing_page/landing_page.dart';
import 'package:consistency_seventh_son/register_login_pageroute_onboarding_folders/register_folder/register_page.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class Login_Page extends StatefulWidget {
  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final _formKey = GlobalKey<FormState>();
  // TextEditingController email =
  TextEditingController _emailController;
  TextEditingController _passwordController;
  // Initially password is obscure
  bool isSubmitting = false;
  // Toggles the password show status
  bool _obscureText = true;
//////////////////////////////
//   bool isValidated = false;
  //validate form keys

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
  }

  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Padding(
        padding: const EdgeInsets.only(right: 270.0),
        child: Container(
            // margin: const EdgeInsets.all(4),
            child: Image.asset(
          'assets/images/illustration-woman-fashion-logo-vector-removebg-preview (1).png',
          fit: BoxFit.contain,
          height: mq.size.height / 5,
          scale: 1.0,
        )));
    Widget Login_Page = Text(
      'Welcome Back ,',
      style: GoogleFonts.oswald(
          textStyle: Theme.of(context).textTheme.headline2,
          color: Colors.white,
          fontSize: getProportionateScreenWidth(38),
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
          'Login to your account using\nEmail Address',
          style: GoogleFonts.oswald(
            textStyle: Theme.of(context).textTheme.headline2,
            color: Colors.white,
            fontSize: getProportionateScreenWidth(16),
          ),
        ));

    Widget loginButton = Positioned(
      left: MediaQuery.of(context).size.width / 4,
      bottom: getProportionateScreenWidth(20),
      child: MaterialButton(
        // onPressed: () {
        //   Navigator.of(context).pushNamed(AppRoutes.introPage);
        // },

        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => IntroPage(),
            )),

        // async {
        //   if (_emailController.text.isEmpty ||
        //       _passwordController.text.isEmpty) {
        //     print("Email and password cannot be empty");
        //     return;
        //   }
        //   try {
        //     final user = await AuthHelper.signInWithEmail(
        //         email: _emailController.text,
        //         password: _passwordController.text);
        //     if (user != null) {
        //       Navigator.of(context).pushNamed(AppRoutes.intro_page);
        //       print("login successful");
        //     }
        //   } catch (e) {
        //     print(e);
        //     _passwordController.text = "";
        //     _emailController.text = "";
        //   }
        // },
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 80,
          child: Center(
            child: new Text(
              "Log In",
              style: const TextStyle(
                color: const Color(0xfffefefe),
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 20,
              ),
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(234, 60, 3, 1),
                    Color.fromRGBO(216, 78, 16, 1),
                    // Color.fromARGB(255, 255, 128, 0),
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter),
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

    Widget loginForm = Container(
      height: 240,
      child: Stack(
        children: <Widget>[
          Container(
            height: 160,
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
                    // enabled: isSubmitting,
                    cursorColor: Colors.white,
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
                          padding: const EdgeInsets.only(top: 12.0),
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
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextFormField(
                      validator: Validators.compose([
                        Validators.required('Password is required'),
                        Validators.patternString(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                            'Invalid Password')
                      ]),
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
                          hintStyle: TextStyle(
                            color: Colors.black87,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: _togglePasswordStatus,
                            color: Colors.black87,
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.black87,
                          )),
                      // validator: (val) {
                      //   return val.length < 6
                      //       ? 'Enter A Password Longer Than 6 Characters'
                      //       : null;
                      // },
                      obscureText: _obscureText,
                    )),
              ],
            ),
          ),
          loginButton,
        ],
      ),
    );

    final button = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Not  A Member ?",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.white, shadows: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(0, 5),
                  blurRadius: 10.0,
                )
              ]),
            ),
            MaterialButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ),
              ),
              child: Text(
                'Sign Up',
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    shadows: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 5),
                        blurRadius: 10.0,
                      )
                    ]),
              ),
            ),
          ],
        )
      ],
    );

    final googlee = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Image(image: AssetImage("assets/images/google.png"), height: 35.0),
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: MaterialButton(
                onPressed: () async {
                  // Navigator.of(context).pushNamed(AppRoutes.introPage);
                  //   try {
                  //     await AuthHelper.signInWithGoogle();
                  //   } catch (e) {
                  //     print(e);
                  //   }
                },
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ))
        ]);

    Widget forgotPassword = Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // GetCheckValue(),

          Text(
            'Forgot your password? ',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Color.fromRGBO(255, 255, 255, 0.5),
              fontSize: 14.0,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Reset password',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: Stack(
        key: _formKey,
        children: <Widget>[
          Container(
            height: mq.size.height,
            decoration: BoxDecoration(
                color: Colors.black87,
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/alex.gif',
                    ),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 7.8,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black87.withOpacity(.9),
                Colors.black87.withOpacity(.1),
              ]),
            ),
          ),

          // decoration: BoxDecoration(
          //     // color: transparentYellow,
          //     ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Spacer(flex: 3),
                logo,
                Spacer(flex: 3),
                Login_Page,
                Spacer(),
                subTitle,
                Divider(),
                Spacer(flex: 2),
                loginForm,
                Spacer(flex: 2),
                button,
                Spacer(flex: 2),
                googlee,
                Spacer(flex: 2),
                forgotPassword
              ],
            ),
            // )
          )
        ],
      ),
    );
  }
}
