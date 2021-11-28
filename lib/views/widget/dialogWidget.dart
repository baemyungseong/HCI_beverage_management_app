import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import views
import 'package:ui_fresh_app/views/authentication/signIn.dart';

logoutDialog(BuildContext mContext) {
  return showDialog(
      context: mContext,
      builder: (context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            backgroundColor: Color(0xff607dd9),
            content: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                    child: Column(
                      children: [
                        Text(
                          "Do you want to sign out Favoury?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'MontserratBold',
                              fontSize: 23),
                        ),
                        SizedBox(height: 30),
                        Container(
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => signinScreen(),
                                ),
                              );
                            },
                            child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 45,
                                width: 260,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)),
                                child: Text(
                                  "Sign Out",
                                  style: TextStyle(
                                      color: Color(0xff607dd9),
                                      fontFamily: 'MontserratBold',
                                      fontSize: 15),
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 45,
                                width: 260,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: Color(0xff607dd9),
                                      fontFamily: 'MontserratBold',
                                      fontSize: 15),
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: -40,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 40,
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 50,
                      ),
                    )
                ),
              ],
            )
        );
      }
  );
}


// dialog(BuildContext Context) {
//   return showDialog(
//       context: Context,
//       builder: (context) {
//         return SimpleDialog(
//           title: Text("Favour Options",
//               style: TextStyle(
//                   color: Color(0xFF05268D), fontFamily: "MontserratBold")),
//           children: <Widget>[
//             SimpleDialogOption(
//               child: Text("Delete",
//                   style: TextStyle(
//                       color: Color(0xFF05268D),
//                       fontFamily: "MontserratRegular")),
//               // onPressed: () {
//               //   Navigator.pop(context);
//               //   removeUserPost();
//               // },
//             ),
//             SimpleDialogOption(
//               child: Text("Cancel",
//                   style: TextStyle(
//                       color: Color(0xFF05268D),
//                       fontFamily: "MontserratRegular")),
//               // onPressed: () => Navigator.pop(context)
//             ),
//           ],
//         );
//       }
//   );
// }
