import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// lets define Login Methods  And Logins

final FirebaseAuth auth = FirebaseAuth.instance; // instance will be final
final GoogleSignIn googleSignIn = GoogleSignIn();

// create some global variable to store data and use it further

String email, userName, imgUrl;

// SignIn Method

Future signInWithGoogle() async {
  try {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    final UserCredential authResult =
        await auth.signInWithCredential(credential);
    final User user = authResult.user;
    // now to check if ther is a user data stored or not by using user variable

    if (user != null) {
      assert(user.email != null);
      assert(user.displayName != null);
      assert(user.photoURL != null);
      // assert use to check user data validation of account
      // after that lets store data into variable we predefines

      email = user.email;
      userName = user.displayName;
      imgUrl = user.photoURL;
      // to confirm that if userName is not given by user
      if (userName.contains(" ")) {
        userName = userName.substring(0, userName.indexOf(" "));
      }
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);
      print('Successfully Loged in ');
      return user;
    }
  } on FirebaseAuthException catch (e) {
    print(e.code.toUpperCase());
  }
  return null;
}

// LogOut Method
Future signOutWithGoogle() async {
  try {
    await googleSignIn.signOut();
    print('Signed Out ');
  } on FirebaseAuthException catch (e) {
    print(e.code.toUpperCase());
  }
}
