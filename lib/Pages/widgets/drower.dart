import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageURL =
        "https://www.google.com/imgres?q=king%20logo&imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fsystem%2Fresources%2Fpreviews%2F016%2F126%2F416%2Fnon_2x%2Fking-crown-esport-logo-design-vector.jpg&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fking-logo&docid=nSkp3hXBiZIppM&tbnid=cYBk0029ICx5wM&vet=12ahUKEwjCj8-m0KKGAxUp1jgGHfnWDY0QM3oECGcQAA..i&w=980&h=980&hcb=2&ved=2ahUKEwjCj8-m0KKGAxUp1jgGHfnWDY0QM3oECGcQAA";

    return Drawer(
        child: Container(
      color: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsetsDirectional.zero,
              child: UserAccountsDrawerHeader(
                accountName: const Text("Raj singh"),
                accountEmail: const Text("Rajmouzam@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              )),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text("Home"),
            titleTextStyle: TextStyle(
              fontSize: 25.15,
              color: Colors.white,
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text("Profile"),
            titleTextStyle: TextStyle(
              fontSize: 25.15,
              color: Colors.white,
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text("Email me"),
            titleTextStyle: TextStyle(
              fontSize: 25.15,
              color: Colors.white,
            ),
          )
        ],
      ),
    ));
  }
}
