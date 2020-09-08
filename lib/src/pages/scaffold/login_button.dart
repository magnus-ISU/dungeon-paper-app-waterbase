import 'package:dungeon_paper/db/models/user.dart';
import 'package:dungeon_paper/src/redux/connectors.dart';
import 'package:dungeon_paper/src/redux/stores.dart';
import 'package:dungeon_paper/src/redux/users/user_store.dart';
import 'package:dungeon_paper/src/utils/auth/auth.dart';
import 'package:dungeon_paper/src/utils/credentials.dart';
import 'package:dungeon_paper/src/utils/logger.dart';
import 'package:flutter/material.dart';

class LoginButton<T> extends StatelessWidget {
  final void Function() onUserChange;

  LoginButton({Key key, this.onUserChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DWStoreConnector<User>(
      converter: (store) => store.state.user.current,
      builder: (context, user) {
        if (user == null) {
          return Container(
            width: 220,
            height: 50,
            child: RaisedButton(
              child: Text('Login with Google', style: TextStyle(fontSize: 20)),
              color: Theme.of(context).accentColor,
              onPressed: _handleSignIn(context),
            ),
          );
        }
        return SizedBox(height: 0, width: 0);
      },
    );
  }

  Function() _handleSignIn(BuildContext context) {
    return () async {
      try {
        CredentialsOld_ creds;
        switch (T) {
          case GoogleCredentials:
            creds = GoogleCredentials();
            break;
          case EmailCredentials:
            creds = EmailCredentials();
            break;
        }

        var user = await signInFlow(creds);

        if (user == null) {
          throw SignInError('user_canceled');
        }
        if (onUserChange != null) {
          onUserChange();
        }
      } on SignInError catch (e) {
        // if (e != 'user_canceled') {
        //   throw (e);
        // }
        logger.d('NORMAL SIGN IN ERROR:');
        logger.d(e.toString());
        dwStore.dispatch(NoLogin());
        Scaffold.of(context, nullOk: true).showSnackBar(
          SnackBar(
            content: Text('Login failed.'),
            duration: Duration(seconds: 6),
          ),
        );
      } catch (e) {
        logger.d('IRREGULAR SIGN IN ERROR:');
        logger.e(e);
        dwStore.dispatch(NoLogin());
        try {
          Scaffold.of(context, nullOk: true).showSnackBar(
            SnackBar(
              content: Text('Something went wrong... Please try again later.'),
              duration: Duration(seconds: 10),
            ),
          );
        } catch (e) {
          logger.e(e);
        }
      }
    };
  }
}
