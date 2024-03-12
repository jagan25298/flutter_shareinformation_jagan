import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareInformationPage extends StatelessWidget {
  const ShareInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share infromation'),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('Share Name'),
                      onTap: () {
                        print('---->Share Name Clicked');
                        _shareName();
                      },
                    ),
                    PopupMenuItem(
                      child: Text('Share MobileNo'),
                      onTap: () {
                        print('---->Share MobileNo Clicked');
                        _shareMobileNo();
                      },
                    ),
                    PopupMenuItem(
                      child: Text('Share Email'),
                      onTap: () {
                        print('---->Share Email Clicked');
                        _shareEmail();
                      },
                    ),
                    PopupMenuItem(
                      child: Text('Share Address'),
                      onTap: () {
                        print('---->Share Address Clicked');
                        _shareAddress();
                      },
                    ),
                  ],),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Jaganath M',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 25),
            Text('+91 8428888340', style: TextStyle(fontSize: 25)),
            SizedBox(height: 25),
            Text('jagan24298@gmail.com', style: TextStyle(fontSize: 25)),
            SizedBox(height: 25),
            Text(
                '14c,Hasthinapuram road,\n1st cross Street\n,Nanmangalam,Kovilambakkam,\nchennai-600129',
                style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }

   _shareName() {
    print('---------Share Name method calling');
    Share.share('Jaganath M');
   }

   _shareMobileNo() {
    print('--------Share MobileNo Method Calling');
    Share.share('+91 84288888340');
   }

   _shareEmail() {
    print('-------Share Email Method Calling');
    Share.share('jagan24298@gmail.com');
   }
}

 _shareAddress() {
  print('------Share Address Method Calling');
  Share.share('14c,Hasthinapuram road,\n1st cross Street\n,Nanmangalam,Kovilambakkam,\nchennai-600129');
}
