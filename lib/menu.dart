/* Authored by: Caraan, Samson, Toledana
Company: PlanWise Lab
Project: MINALIMA
Feature: Menu page
Description: The menu page is where users can navigate through different pages of the app.
 */
import 'package:flutter/material.dart';


class Year extends StatelessWidget {
  const Year({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 202,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ]
        ),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.calendar_month_rounded),
              title: const Text('Year'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.calendar_view_month_rounded),
              title: const Text('Month'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.calendar_view_week_rounded),
              title: const Text('Week'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
          ],
        )
      )
    );
  }
}

class Stickers extends StatelessWidget {
  const Stickers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 272,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ]
        ),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.star_rate_rounded),
              title: const Text('Stickers'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.format_quote_rounded),
              title: const Text('Quotes'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.circle_notifications_rounded),
              title: const Text('Notifications'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.calendar_view_week_rounded),
              title: const Text('Alarms'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
          ],
        )
      )
    );
  }
}

class Darkmode extends StatelessWidget {
  const Darkmode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 272,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ]
        ),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.dark_mode_rounded),
              title: const Text('Dark mode'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.format_paint_rounded),
              title: const Text('Themes'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.volume_up_rounded),
              title: const Text('Sounds and Haptics'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.volume_off_rounded),
              title: const Text('Silent'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
          ],
        )
      )
    );
  }
}

class Archives extends StatelessWidget {
  const Archives({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 127,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ]
        ),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.dark_mode_rounded),
              title: const Text('Dark mode'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.format_paint_rounded),
              title: const Text('Themes'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
          ],
        )
      )
    );
  }
}

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 272,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ]
        ),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.account_box_rounded),
              title: const Text('Account Settings'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.contact_support_rounded),
              title: const Text('Help and Support'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.info_rounded),
              title: const Text('About'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.logout_rounded),
              title: const Text('Log out'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Menu(),
                // ));
              },
            ),
          ],
        )
      )
    );
  }
}





