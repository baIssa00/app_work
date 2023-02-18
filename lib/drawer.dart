import 'package:flutter/material.dart';

class CustomNavigationDrawer extends StatefulWidget {
  const CustomNavigationDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomNavigationDrawer> createState() => _CustomNavigationDrawerState();
}

class _CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/head/slider.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              // accountName: Text(_datas['Pr'].toString()),
              accountName: Text("Prenom & Nom"),
              accountEmail: Text("Numero Telephone"),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Accueil',
                ),
                leading: const Icon(
                  Icons.home,
                  color: Colors.black87,
                  size: 28,
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Partager l'app",
                ),
                leading: const Icon(
                  Icons.send_to_mobile,
                  color: Colors.black87,
                  size: 28,
                ),
                onTap: () {},
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Se déconnecter",
                ),
                leading: const Icon(
                  Icons.logout,
                  color: Colors.black87,
                  size: 28,
                ),
                onTap: () {},
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
