import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking_app/shared/network/remote/dio_helper.dart';

import '../../../model/login_model.dart';
import '../../../shared/network/end_point/end_point.dart';
import '../state/state.dart';
class HotelCubit extends Cubit<LoginState> {

  HotelCubit() : super (InitialLoginState());

  static HotelCubit get(context) => BlocProvider.of(context);

 late LoginModel loginModel;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoadingLoginState());

    DioHelper.postsData(
      url: LOGIN,
      data:
      {
        'email': email,
        'password': password,
      },
    ).then((value) {

      loginModel = LoginModel.fromJson(value?.data);
      print(loginModel.message);
      print(loginModel.status);
      print(loginModel.data.token);

      emit(SuccessLoginState(loginModel));
    }).catchError((error) {
      print(error.toString());
      emit(ErrorLoginState(error.toString()));
    });
  }
}