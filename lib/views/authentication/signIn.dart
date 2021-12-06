import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import constants
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/constants/images.dart';
import 'package:ui_fresh_app/constants/icons.dart';
import 'package:ui_fresh_app/constants/others.dart';

//import views
import 'package:ui_fresh_app/views/authentication/forgotPassword.dart';
import 'package:ui_fresh_app/views/navigationBar/skNavigationBar.dart';
import 'package:ui_fresh_app/views/storekeeper/skDashboard.dart';
import 'package:ui_fresh_app/views/serve/svDashboard.dart';
import 'package:ui_fresh_app/views/accountant/atDashboard.dart';
import 'package:ui_fresh_app/views/bartender/btDashboard.dart';
import 'package:ui_fresh_app/views/accountManagement/profileManagement.dart';

import 'package:ui_fresh_app/views/navigationBar/skNavigationBar.dart';
import 'package:ui_fresh_app/views/navigationBar/svNavigationBar.dart';
import 'package:ui_fresh_app/views/navigationBar/btNavigationBar.dart';
import 'package:ui_fresh_app/views/navigationBar/atNavigationBar.dart';

//import others
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:dots_indicator/dots_indicator.dart';

class signinScreen extends StatefulWidget {
  const signinScreen({Key? key}) : super(key: key);

  @override
  _signinScreenState createState() => _signinScreenState();
}

class _signinScreenState extends State<signinScreen> {
  bool isHiddenPassword = true;
  final GlobalKey<FormState> _formemailKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formpasswordKey = GlobalKey<FormState>();

  String? email, password;

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
                        autovalidate: true,
                        key: _formemailKey,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: [AutofillHints.email],
                          style: TextStyle(color: blackLight),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 20, right: 20),
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
                                foreground: Paint()..shader = redGradient),
                          ),
                          //validator
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "Please enter your email"),
                            EmailValidator(
                                errorText: "Your email is not valid"),
                          ]),
                          onChanged: (String? value) {
                            email = value;
                          },
                        ),
                      ),
                      SizedBox(height: 16),
                      Form(
                        autovalidate: true,
                        key: _formpasswordKey,
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          autofillHints: [AutofillHints.password],
                          obscureText: isHiddenPassword,
                          style: TextStyle(color: blackLight),
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: isHiddenPassword
                                    ? Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                            Container(
                                                padding:
                                                    EdgeInsets.only(right: 20),
                                                child: SvgPicture.asset(
                                                    atEyeVisibility,
                                                    color: blackLight,
                                                    height: 24,
                                                    width: 24)
                                            )
                                          ]
                                    )
                                    : Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                            Container(
                                                padding:
                                                    EdgeInsets.only(right: 20),
                                                child: SvgPicture.asset(
                                                    atEyeInvisibility,
                                                    color: blackLight,
                                                    height: 24,
                                                    width: 24)
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
                                foreground: Paint()..shader = redGradient),
                          ),
                          //validator
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "Please enter your password"),
                            MinLengthValidator(6,
                                errorText:
                                    "Your password must be at least 6 digits length"),
                          ]),
                          onChanged: (String? value) {
                            password = value;
                          },
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
                        if (_formemailKey.currentState!.validate() &&
                            _formpasswordKey.currentState!.validate()) {
                          if(email == "storekeeper@gmail.com" && password == "storekeeper")
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => storekeeperNavigationBar(),
                              ),
                            );
                          else if (email == "serve@gmail.com")
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => serveNavigationBar(),
                              ),
                            );
                          else if (email == "bartender@gmail.com" && password == "bartender")
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bartenderNavigationBar(),
                              ),
                            );
                          else if (email == "accountant@gmail.com" && password == "accountant")
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => accountantNavigationBar(),
                              ),
                            );
                          else 
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => profileManagementScreen(),
                              ),
                            );
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   const SnackBar(content: Text('Processing Data')),
                          // );
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
