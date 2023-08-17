import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:worldwideadverts/controller/login_controller.dart';
=======
import 'package:worldwideadverts/constants.dart';
>>>>>>> b567877800332727b1d50583288ca880105139f2
import 'package:worldwideadverts/view/HomeScreen/homepage.dart';

import '../../controller/login_controller.dart';

class LoginScreen extends StatefulWidget {
  @override
<<<<<<< HEAD
  Widget build(BuildContext context) {
    Get.put(loginController());
    var inputBorder = const BorderRadius.vertical(
      bottom: Radius.circular(10.0),
      top: Radius.circular(20.0),
    );

    return GetBuilder<loginController>(builder: (logic) {
      return FlutterLogin(
        title: 'World Wide Adverts',
        // logo: AssetImage('assets/logo.png'),
        onLogin: (credentials) {
          logic.emailController.text = credentials.name;
          logic.passwordController.text = credentials.password;
          logic.login();
        },
        onSignup: (_) => Get.to(const HomePage()),
        onSubmitAnimationCompleted: () => Get.to(const HomePage()),
        onRecoverPassword: (_) => Get.to(const HomePage()),
        theme: LoginTheme(
          primaryColor: Colors.teal,
          accentColor: Colors.yellow,
          errorColor: Colors.deepOrange,
          titleStyle: const TextStyle(
              color: Colors.greenAccent,
              fontFamily: 'Quicksand',
              letterSpacing: 2,
              fontSize: 32),
          bodyStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
          ),
          textFieldStyle: const TextStyle(
            color: Colors.orange,
            shadows: [Shadow(color: Colors.yellow, blurRadius: 2)],
          ),
          buttonStyle: const TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.yellow,
          ),
          cardTheme: CardTheme(
            color: Colors.yellow.shade100,
            elevation: 5,
            margin: EdgeInsets.only(top: 15),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(100.0)),
          ),
          inputTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.purple.withOpacity(.1),
            contentPadding: EdgeInsets.zero,
            errorStyle: const TextStyle(
              backgroundColor: Colors.orange,
              color: Colors.white,
            ),
            labelStyle: const TextStyle(fontSize: 12),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue.shade700, width: 4),
              borderRadius: inputBorder,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue.shade400, width: 5),
              borderRadius: inputBorder,
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade700, width: 7),
              borderRadius: inputBorder,
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade400, width: 8),
              borderRadius: inputBorder,
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 5),
              borderRadius: inputBorder,
            ),
          ),
          buttonTheme: LoginButtonTheme(
            splashColor: Colors.purple,
            backgroundColor: Colors.pinkAccent,
            highlightColor: Colors.lightGreen,
            elevation: 9.0,
            highlightElevation: 6.0,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            // shape: CircleBorder(side: BorderSide(color: Colors.green)),
            // shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(55.0)),
          ),
=======
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _formAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOutBack,
      ),
    );

    _formAnimation = Tween<double>(begin: 100.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOutBack,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return GetBuilder<LoginController>(builder: (logic) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: -100.0,
              right: -100.0,
              child: Container(
                width: 300.0,
                height: 300.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.withOpacity(0.1),
                ),
              ),
            ),
            Positioned(
              top: -50.0,
              left: -50.0,
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.withOpacity(0.1),
                ),
              ),
            ),
            Center(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _scaleAnimation.value,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: child,
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 8.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: AnimatedBuilder(
                        animation: _animationController,
                        builder: (context, child) {
                          return Transform.translate(
                            offset: Offset(0.0, _formAnimation.value),
                            child: child,
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20.0),
                            const Text(
                              'World Wide Adverts',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Quicksand',
                                letterSpacing: 2,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            TextFormField(
                              controller: logic.emailController,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(Icons.email),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            TextFormField(
                              controller: logic.passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                prefixIcon: Icon(Icons.lock),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            logic.isloggingin
                                ? CircularProgressIndicator(
                                    color: bluecolor,
                                  )
                                : ElevatedButton(
                                    onPressed: () => logic.login(),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xFF00B4D8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16.0,
                                      ),
                                      animationDuration:
                                          const Duration(milliseconds: 200),
                                      elevation: 4.0,
                                      shadowColor:
                                          Colors.black.withOpacity(0.2),
                                    ),
                                    child: const Text('LOGIN'),
                                  ),
                            const SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () => Get.to(const HomePage()),
                                  child: Text(
                                    'Create an Account',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () => Get.to(const HomePage()),
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
>>>>>>> b567877800332727b1d50583288ca880105139f2
        ),
      );
    });
  }
}
