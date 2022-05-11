
import 'package:flutter/material.dart';



class MyAppBar extends AppBar {
  MyAppBar({required Widget title, required BuildContext context, required String route}) : super( title: title,
      automaticallyImplyLeading: false,
      leading:  route != null? new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: route != 'pop'? (){Navigator.pushNamedAndRemoveUntil(context, route, (_) => false);}:(){Navigator.pop(context);}):(null),
      actions: <Widget>[getActions(context), ]);



}

PopupMenuButton getActions(
    BuildContext context ){
  return PopupMenuButton<int>(
    itemBuilder: (context) => [
      PopupMenuItem(
        value: 1,
        child: Text('Change Diet Plan'),
      ),
      PopupMenuItem(
        value: 2,
        child: Text('Favorite Foods'),
      ),


      PopupMenuItem(
        value: 3,
        child: Text('Limit Listings'),
      ),
      PopupMenuItem(
        value: 4,
        child: Text('Logout'),
      )

    ],
    onSelected: (value) {
      if (value == 1) {
        // logout
        Navigator.pushNamedAndRemoveUntil(context, "DietScreen", (_) => false);
      }

      if (value == 2) {
        // logout
        Navigator.pushNamed(context, 'FavoritesListScreen');
      }

      if (value == 3) {
        // logout
        Navigator.pushNamed(context, 'LimitScreen');
      }


      if (value == 4) {
        // logout
        // authState.checkAuthentication();

        Navigator.pushReplacementNamed(context, 'LoginScreen');

      }
    },
  );
}

class DrawerAppBar extends AppBar {
  DrawerAppBar({required Widget title, required BuildContext context, required String route}) : super(title: title,
  );





}