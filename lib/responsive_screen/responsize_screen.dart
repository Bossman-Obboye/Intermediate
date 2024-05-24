import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Design')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 480) {
            return Row(
              children: [
                Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Container(
                        color: Colors.blueAccent,
                        height: 150,
                        child: const Center(
                          child: Text('Menu Item 1'),
                        ),
                      ),
                      const ListTile(title: Text('Menu Item 1')),
                      const ListTile(title: Text('Menu Item 2')),
                      const ListTile(title: Text('Menu Item 3')),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text('${constraints.maxWidth}'),
                  ),
                ),
              ],
            );
          } else {
            return ListView(
              children: [
                ListTile(title: Text('${constraints.maxWidth}')),
                const ListTile(title: Text('Menu Item 2')),
                const ListTile(title: Text('Menu Item 3')),
              ],
            );
          }
        },
      ),
    );
  }
}
