import 'package:flutter/material.dart';
import 'package:tugas_tracker/screens/list_tugas.dart';
import 'package:tugas_tracker/screens/main_menu.dart';
import 'package:tugas_tracker/screens/tracker_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Tugas Tracker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Catat seluruh progress merngerjakan tugas disini!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_add_rounded),
            title: const Text('Tambah Tugas'),
            // Bagian redirection ke TrackerFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrackerFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_books_rounded),
            title: const Text('Daftar Tugas'),
            onTap: () {
              // Route menu ke halaman buku
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TugasPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
