// Imports the material design package for the given widgets.
import 'package:flutter/material.dart';

// This method runs the app.
void main() => runApp(DrawerApp());

// DrawerApp is the root widget of the app.
class DrawerApp extends StatelessWidget {
  // Creates an appTitle property inside the DrawerApp widget.
  final String appTitle = 'LE\'GAN CAKES';

  @override
  // This part describes the build method for the DrawerApp widget.
  Widget build(BuildContext context) {
    // Creates the MaterialApp which inherits the material design theme.
    return MaterialApp(
      // Assigns the appTitle property to the title class.
      title: appTitle,
      // The home property is the default root of the app.
      home: MyHomePage(title: appTitle),
    );
  }
}

// Creates a stateless MyHomePage widget.
class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Creates a visual scaffold layout for the widget.
    return Scaffold(
      // Displays a material design appBar at the top of the scaffold.
      appBar: AppBar(
        // Displays the appTitle string 'LE\'GAN CAKES' inside the AppBar.
        title: Text(title),
        // Sets the appBar backgroundColor to blueGrey[600],
        backgroundColor: Colors.blueGrey[600],
      ),
      // The body contains the primary contents of the scaffold, displayed below the appBar.
      body: Center(
        // Creates a body widget that centers its child.
        child: Container(
          // Creates a container with the size specificaitons below.
          height: 900,
          width: 900,
          decoration: BoxDecoration(
              // Creates a boxed decoration.
              image: DecorationImage(
                  // Places the image inside the BoxDecoration.
                  image: NetworkImage(
                      // Creates an object that fetches the image at the URL below.
                      'https://images.pexels.com/photos/2773606/pexels-photo-2773606.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
                  fit: BoxFit.cover)),
        ),
      ),
      // Creates a material design drawer - A panel displayed to the side of the app body that is hidden until tapped.
      drawer: Drawer(
        //Creates a scrollable, linear array of widgets from an explicit list.
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              // ---------DrawerHeader Title---------
              child: Text(
                'SHOP NOW',
                style: TextStyle(
                  height: 2,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
            ),
            ListTile(
              // -----------------ListTile 1----------------------
              title: Text(
                'Cupcakes',
                style: TextStyle(height: 2, fontSize: 16),
              ),
              onTap: () {
                // Called when the user taps this list tile.
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              // // -----------------ListTile 2-------------------
              title: Text(
                'Selection Boxes',
                style: TextStyle(height: 2, fontSize: 16),
              ),
              onTap: () {
                // Called when the user taps this list tile.
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              // -----------------ListTile 3----------------------
              title: Text(
                'Vegan',
                style: TextStyle(height: 2, fontSize: 16),
              ),
              onTap: () {
                // Called when the user taps this list tile.
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
