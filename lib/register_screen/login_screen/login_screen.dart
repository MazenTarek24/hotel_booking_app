import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking_app/register_screen/login_screen/cubit/cubit.dart';
import 'package:hotel_booking_app/register_screen/login_screen/state/state.dart';
import 'package:hotel_booking_app/register_screen/register_screen.dart';

import '../../shared/components/components.dart';
import '../../shared/constant/constant.dart';

class LoginScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return BlocProvider(
      create: (context)=> HotelCubit(),

      child: BlocConsumer<HotelCubit , LoginState>(
        listener:(context,state) {
          if(state is SuccessLoginState)
            {
              if(state.loginModel.status)
                {
                  print(state.loginModel.message);
                  print(state.loginModel.data.token);

                }else{
                print(state.loginModel.message);
              }
            }
        } ,
        builder: (context,state){
         return Scaffold(
            body: Center(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'Login With Your \n Account',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 35.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0.0),
                      child: defaultTextField(
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        onSubmit: (value) {
                          print(value);
                        },
                        validate: (String value){
                          if(value.isEmpty)
                          {
                            return 'email is too short';
                          }
                        },
                        onTap: (){},
                        text: "email",
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0.0),
                      child: defaultTextField(
                        controller: passwordController,
                        type: TextInputType.emailAddress,
                        validate: (String value){
                          if(value.isEmpty)
                            {
                              return 'password is too short';
                            }
                        },
                        onTap: (){},
                        onSubmit: (value)  {
                          if (formKey.currentState?.validate() == true) {
                            HotelCubit.get(context).userLogin(
                                email: emailController.text,
                                password: passwordController.text);
                          }
                        },
                        text: "password",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    state is! LoadingLoginState ?
                    defaultButton(
                        function: (){
                          if(formKey.currentState?.validate() == true) {
                            HotelCubit.get(context).userLogin(
                                email: emailController.text.toString(),
                                password: passwordController.text.toString(),
                            );
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context)
                            //       => RegisterScreen()
                            //   ),
                            // );
                          }else{
                            print('login error');
                          }
                        },
                        text: 'Sign In'
                    ) :CircularProgressIndicator(
                      color: defaultColor,
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account ? ',
                          style:Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)
                                    => RegisterScreen()
                                ),
                              );
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: defaultColor
                              ),
                            )
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      )
    );
  }
}
