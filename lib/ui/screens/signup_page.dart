import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/ui/screens/widgets/customTextField.dart';
import 'package:plant_app/ui/screens/signin_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/signup.png",
                  height: 275,
                ),
                const Text(
                  "Sing Up",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextField(
                    icon: Icons.alternate_email,
                    obscureText: false,
                    hintText: "Enter Email"),
                const CustomTextField(
                    icon: Icons.person,
                    obscureText: false,
                    hintText: "Enter Full Name"),
                const CustomTextField(
                    icon: Icons.lock,
                    obscureText: true,
                    hintText: "Enter Password"),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: const SingIn(),
                            type: PageTransitionType.bottomToTop));
                  },
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: const Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Constants.primaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 30,
                        child: Image.asset("assets/images/google.png"),
                      ),
                      Text(
                        "Sign Up with Google",
                        style: TextStyle(
                            color: Constants.blackColor, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: const SingIn(),
                            type: PageTransitionType.bottomToTop));
                  },
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: "Have an Account? ",
                              style: TextStyle(color: Constants.blackColor)),
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: "Login",
                                  style:
                                      TextStyle(color: Constants.primaryColor)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
