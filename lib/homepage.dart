import 'package:flutter/material.dart';
import 'package:rozhcecybershool/login.dart';

//import 'package:rozhcecybershool/model/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Loginpages(
                            username: '',
                          )),
                );
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text(
                'username',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              accountEmail: Text('password'),
              currentAccountPicture:
                  Icon(Icons.person, size: 76, color: Colors.white),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            // Text('Username : $username'),
            // Text('Username : $password'),
            // Text('Username : ${password}'),
          ],
        ),
      ),
    );
  }
}
