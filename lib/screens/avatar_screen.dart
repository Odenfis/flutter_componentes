import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Walter Moncada', style: TextStyle(color: Colors.white)),
        actions: [
          CircleAvatar(
            child: Text('WM'),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          maxRadius: 180,
          backgroundImage: NetworkImage('https://m.media-amazon.com/images/I/61j50Pdxw4L._UF1000,1000_QL80_.jpg'),
         ),
      ),
    );
  }
}