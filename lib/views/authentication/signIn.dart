import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import widgets
import 'package:ui_fresh_app/views/widget/snackBarWidget.dart';

//import views
import 'package:ui_fresh_app/views/authentication/forgotPassword.dart';
import 'package:ui_fresh_app/views/navigationBar/skNavigationBar.dart';
import 'package:ui_fresh_app/views/navigationBar/btNavigationBar.dart';
import 'package:ui_fresh_app/views/navigationBar/atNavigationBar.dart';
import 'package:ui_fresh_app/views/navigationBar/svNavigationBar.dart';

//import others
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:iconsax/iconsax.dart';

class signInScreen extends StatefulWidget {
  const signInScreen({Key? key}) : super(key: key);

  @override
  _signInScreenState createState() => _signInScreenState();
}

class _signInScreenState extends State<signInScreen> {
  bool isHiddenPassword = true;

  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> passwordFormKey = GlobalKey<FormState>();

  List<String> _listImage = [atAdsLogin1, atAdsLogin2, atAdsLogin3];
  double _currentPosition = 1.0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent),
      child: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(backgroundLogin), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(height: 45),
                Container(
                  padding: EdgeInsets.all(appPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text(
                              'Good morning,',
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: content16,
                                color: grey8,
                                fontWeight: FontWeight.w400,
                                height: 1.6,
                              ),
                            ),
                            SizedBox(width: 32),
                            Container(
                              alignment: Alignment.topCenter,
                              child: Image.asset(atWavingHand, scale: 4),
                            ),
                          ]),
                          SizedBox(height: 8),
                          Text(
                            'Welcome back!',
                            style: TextStyle(
                              fontFamily: 'SFProText',
                              fontSize: title22,
                              color: blackLight,
                              fontWeight: FontWeight.w900,
                              height: 1.6,
                            ),
                          ),
                          SizedBox(height: 16),
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: title18,
                                color: blackLight,
                                fontWeight: FontWeight.w700,
                                height: 1.6,
                              ),
                              children: const <TextSpan>[
                                TextSpan(
                                  text: 'Fresh',
                                  style: TextStyle(
                                    color: blueWater,
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: ' Drink',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      new Spacer(),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        alignment: Alignment.topRight,
                        child: Image.asset(logo, scale: 2.678),
                      ),
                      SizedBox(width: 16)
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                    height: 137,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: PageView.builder(
                        controller: PageController(
                            initialPage: 1,
                            keepPage: true,
                            viewportFraction: 0.6),
                        itemCount: _listImage.length,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (num) {
                          setState(() {
                            if (num + 1 == _listImage.length) {
                              _currentPosition = 2.0;
                            } else if (num == 0) {
                              _currentPosition = 0.0;
                            } else {
                              _currentPosition = num.toDouble();
                            }
                          });
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 14.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                  image: AssetImage(_listImage[index]),
                                  fit: BoxFit.cover),
                            ),
                          );
                        })),
                SizedBox(height: 32),
                Container(
                  alignment: Alignment.center,
                  child: new DotsIndicator(
                      dotsCount: 3,
                      position: _currentPosition,
                      decorator: DotsDecorator(
                        spacing: const EdgeInsets.only(left: 4, right: 4),
                        color: blackLight.withOpacity(0.3),
                        activeColor: blackLight,
                        size: const Size.square(6.0),
                        activeSize: const Size(20.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      )),
                ),
                //end pageview
                SizedBox(height: 12),
                Container(
                  padding: EdgeInsets.all(appPadding),
                  child: Column(
                    children: [
                      Form(
                        key: emailFormKey,
                        child: Container(
                          width: 319,
                          height: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: blueLight),
                          alignment: Alignment.topCenter,
                          child: TextFormField(
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: 16,
                                color: blackLight,
                                fontWeight: FontWeight.w400
                              ),
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              autofillHints: [AutofillHints.email],
                              // //validator
                              // validator: (password) {
                              //   if (isPasswordValid(password.toString())) {
                              //     return null;
                              //   } else {
                              //     return '';
                              //   }
                              // },
                              decoration: InputDecoration(
                                contentPadding:
                                  EdgeInsets.only(left: 20, right: 12),
                                hintStyle: TextStyle(
                                    fontFamily: 'SFProText',
                                    fontSize: content16,
                                    fontWeight: FontWeight.w400,
                                    color: blackLight.withOpacity(0.5)),
                                hintText: "Enter your email",
                                filled: true,
                                fillColor: white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorStyle: TextStyle(
                                  color: Colors.transparent,
                                  fontSize: 0,
                                  height: 0,
                                ),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Form(
                        key: passwordFormKey,
                        child: Container(
                          width: 319,
                          height: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: blueLight),
                          alignment: Alignment.topCenter,
                          child: TextFormField(
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: 16,
                                color: blackLight,
                                fontWeight: FontWeight.w400
                              ),
                              controller: passwordController,
                              obscureText: isHiddenPassword,
                              keyboardType:
                                  TextInputType.visiblePassword,
                              autofillHints: [AutofillHints.password],
                              // //validator
                              // validator: (password) {
                              //   if (isPasswordValid(password.toString())) {
                              //     return null;
                              //   } else {
                              //     return '';
                              //   }
                              // },
                              decoration: InputDecoration(
                                suffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: isHiddenPassword
                                  ? Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right: 20),
                                          child: Icon(Iconsax.eye, size: 24, color: grey8)
                                        )
                                      ]
                                  )
                                  : Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Icon(Iconsax.eye_slash, size: 24, color: grey8)
                                      )
                                    ]
                                  )
                                ),
                                contentPadding:
                                  EdgeInsets.only(left: 20, right: 12),
                                hintStyle: TextStyle(
                                    fontFamily: 'SFProText',
                                    fontSize: content16,
                                    fontWeight: FontWeight.w400,
                                    color: blackLight.withOpacity(0.5)),
                                hintText: "Enter your password",
                                filled: true,
                                fillColor: white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorStyle: TextStyle(
                                  color: Colors.transparent,
                                  fontSize: 0,
                                  height: 0,
                                ),
                              )
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(top: 16),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => forgotScreen()),
                              );
                            },
                            child: Text('Forgot password?',
                                style: TextStyle(
                                  fontFamily: 'SFProText',
                                  color: blueWater,
                                  fontSize: content14,
                                  fontWeight: FontWeight.w500,
                                )),
                          )),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(appPadding),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      //action navigate to dashboard screen
                      onTap: () {
                        if (emailFormKey.currentState!.validate() &&
                            passwordFormKey.currentState!.validate()) {
                          if(emailController.text == "storekeeper@gmail.com" && passwordController.text == "storekeeper")
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => storekeeperNavigationBar(),
                              ),
                            );
                          else if (emailController.text == "serve@gmail.com")
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => serveNavigationBar(),
                              ),
                            );
                          else if (emailController.text == "bartender@gmail.com" && passwordController.text == "bartender")
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bartenderNavigationBar(),
                              ),
                            );
                          else if (emailController.text == "accountant@gmail.com" && passwordController.text == "accountant")
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => accountantNavigationBar(),
                              ),
                            );
                          else {
                            showSnackBar(context, 'Your user account is wrong, please check!', 'error');
                          }
                        }
                      },
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        duration: Duration(milliseconds: 300),
                        height: 48,
                        width: 200,
                        decoration: BoxDecoration(
                          color: blackLight,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                            BoxShadow(
                              color: black.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 64,
                              offset:
                                  Offset(15, 15), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              color: whiteLight,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w600,
                              fontSize: textButton20),
                        ),
                      ),
                    )
                ),
              ],
            )),
      ),
    );
  }

  //Create function
  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
