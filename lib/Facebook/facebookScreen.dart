import 'package:firebaseauth/Custompackages.dart';

class FacebookLogin extends StatefulWidget {
  @override
  _FacebookLoginState createState() => _FacebookLoginState();
}

class _FacebookLoginState extends State<FacebookLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarWidget(
          icon: FontAwesomeIcons.facebookSquare,
          text: 'Facebook Login',
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          // backgroundBlendMode: BlendMode.clear,
          color: Colors.pink[700],
        ),
        child: Center(
          child: MaterialButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text(
                  'Facebook Log In',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
