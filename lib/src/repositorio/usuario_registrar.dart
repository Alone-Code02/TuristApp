import 'package:firebase_auth/firebase_auth.dart';

class UsuarioRegistrar {
  Future<bool> registrarUsuario(String email, String password) async {
    try {
      final credencial = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      print(e);
      return false;
    } catch (e) {
      print(e);
      return false;
    }
    ;
  }
}
