import 'package:flutter/material.dart';
import 'package:hotel_booking_app/register_screen/login_screen/login_screen.dart';
import 'package:hotel_booking_app/shared/network/end_point/end_point.dart';

import '../shared/components/components.dart';
import '../shared/constant/constant.dart';

class RegisterScreen extends StatelessWidget
{
 var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    body: Center(
       child: SingleChildScrollView(
           child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text(
                'Fill Your Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 35.0,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(
                   5.0,0,5.0,0.0
                ),
                child: defaultTextField(
                  controller: nameController ,
                  type:TextInputType.name,
                  onSubmit: (value){
                    print(value);
                  },
                  text: "Full Name",
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              Padding(
                padding:  EdgeInsets.fromLTRB(
                    5.0,0,5.0,0.0
                ),
                child: defaultTextField(
                  controller: nameController ,
                  type:TextInputType.emailAddress,
                  onSubmit: (value){
                    print(value);
                  },
                  text: "email",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(
                    5.0,0,5.0,0.0
                ),
                child: defaultTextField(
                  controller: nameController ,
                  type:TextInputType.phone,
                  onSubmit: (value){
                    print(value);
                  },
                  text: "Phone Number",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(
                    5.0,0,5.0,0.0
                ),
                child: defaultTextField(
                  controller: nameController ,
                  type:TextInputType.visiblePassword,
                  onSubmit: (value){
                    print(value);
                  },
                  text: "Password",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(
                    5.0,0,5.0,0.0
                ),
                child: defaultTextField(
                  controller: nameController ,
                  type:TextInputType.name,
                  onSubmit: (value){
                    print(value);
                  },
                  text: "Password Confirmation",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
               defaultButton(
                    function: (){
                      },
                    text:
                      'Sign Up'
                    ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Alredady have an account ?',
                    style:Theme.of(context).
                    textTheme.bodyText1?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                          MaterialPageRoute(
                              builder: (context)
                              => LoginScreen()
                          ),
                        );
                      },
                      child: Text(
                          'Sign In',
                        style: TextStyle(
                          color: defaultColor
                        ),
                      )
                  )
                ],
              )
        ]
        ),
         ),
    ),
    );
  }

}