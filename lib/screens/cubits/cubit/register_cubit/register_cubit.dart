import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<void> registerUser(
      {required String email, required String password}) async {
    emit(RegisterLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(RegisterFailure(errMessage: 'weak password'));
      } else if (ex.code == 'email-already-in-use') {
        emit(RegisterFailure(errMessage: 'email already in use'));
      }
    } catch (e) {
      emit(RegisterFailure(errMessage: 'there was an error pleace try again'));
    }
  }
}
//  try {
//                         await registerUser();

//                         Navigator.pushNamed(context, ChatPage.id);
//                       } on FirebaseAuthException catch (ex) {
//                         if (ex.code == 'weak-password') {
//                           showSnackBar(context, 'weak password');
//                         } else if (ex.code == 'email-already-in-use') {
//                           showSnackBar(context, 'email already exists');
//                         }
//                       } catch (ex) {
//                         showSnackBar(context, 'there was an error');
//                       }

//                       isLoading = false;
//                       setState(() {});