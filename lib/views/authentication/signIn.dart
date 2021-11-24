import 'package:dots_indicator/dots_indicator.dart';
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
import 'package:ui_fresh_app/views/storekeeper/skDashboard.dart';

//import others
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';

class signinScreen extends StatefulWidget {
  const signinScreen({Key? key}) : super(key: key);

  @override
  _signinScreenState createState() => _signinScreenState();
}

class _signinScreenState extends State<signinScreen> {
  bool isHiddenPassword = true;
  final GlobalKey<FormState> _formemailKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formpasswordKey = GlobalKey<FormState>();
  List<String> _listImage = [loginAds1, loginAds2, loginAds3];
  double _currentPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent),
      child: Scaffold(
        body: Container(
            padding: EdgeInsets.all(appPadding),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(backgroundLogin), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(height: 45),
                Row(
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
                SizedBox(height: 36),
                //pageview làm ở đây nhe!
                Container(
                    height: 137,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: PageView.builder(
                        controller: PageController(viewportFraction: 0.6),
                        itemCount: _listImage.length,
                        onPageChanged: (num) {
                          setState(() {
                            _currentPosition = num.toDouble();
                          });
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                  image: AssetImage(_listImage[index]),
                                  fit: BoxFit.cover),
                            ),
                          );
                        })),
                Container(
                  child: new DotsIndicator(
                      dotsCount: 3,
                      position: _currentPosition,
                      decorator: DotsDecorator(
                        activeColor: Colors.black,
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      )),
                ),
                //end pageview
                SizedBox(height: 40),
                Column(
                  children: [
                    Form(
                      autovalidate: true,
                      key: _formemailKey,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: [AutofillHints.email],
                        style: TextStyle(color: blackLight),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, right: 20),
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
                          EmailValidator(errorText: "Your email is not valid"),
                        ]),
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
                                                  eyeVisibility,
                                                  color: blackLight,
                                                  height: 24,
                                                  width: 24))
                                        ])
                                  : Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                          Container(
                                              padding:
                                                  EdgeInsets.only(right: 20),
                                              child: SvgPicture.asset(
                                                  eyeInvisibility,
                                                  color: blackLight,
                                                  height: 24,
                                                  width: 24))
                                        ])),
                          contentPadding: EdgeInsets.only(left: 20, right: 12),
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
                new Spacer(),
                Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      //action navigate to dashboard screen
                      onTap: () {
                        if (_formemailKey.currentState!.validate() &&
                            _formpasswordKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => storekeeperDashboard(),
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
                    )),
                SizedBox(height: 85)
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
