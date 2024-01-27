import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Widgets',
    home: MyScreen(),
  ));
}

class MyScreen extends StatelessWidget {
  MyScreen({Key? key}) : super(key: key);

  List<String> nameList = ['Peter', 'Sam', 'Jane', 'Alex', 'Ann'];
  List<String> emailList = [
    'Peter@gmail.com',
    'Sam@gmail.com',
    'Jane@gmail.com',
    'Alex@gmail.com',
    'Ann@gmail.com'
  ];
  List<String> profileList = [
    'https://buffer.com/library/content/images/2023/10/free-images.jpg',
    'https://buffer.com/library/content/images/2023/10/free-images.jpg',
    'https://buffer.com/library/content/images/2023/10/free-images.jpg',
    'https://buffer.com/library/content/images/2023/10/free-images.jpg',
    'https://buffer.com/library/content/images/2023/10/free-images.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: nameList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: NetworkImage(
                    profileList[index],
                    // 'https://buffer.com/library/content/images/2023/10/free-images.jpg'
                  ),
                ),
                title: Text(nameList[index] ?? 'Undefine'),
                subtitle: Text(emailList[index]),
              );
            },
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 8.0, crossAxisSpacing: 8.0),
            itemCount: 100,
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              );
            },
          ),
        ),
      ],
    );
  }
}

//Using hard coded values in list view builder
//     Column(
//   children: [
//     Expanded(
//       child: ListView.builder(
//         itemCount: 1000,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: const CircleAvatar(
//               backgroundColor: Colors.yellow,
//               backgroundImage: NetworkImage(
//                   'https://buffer.com/library/content/images/2023/10/free-images.jpg'),
//             ),
//             // Icon(Icons.email),
//             title: Text('Hina Khan $index'),
//             subtitle: const Text('hinakhan@gmail.com'),
//           );
//         },
//       ),
//     ),
//     Expanded(
//       child: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3, mainAxisSpacing: 8.0, crossAxisSpacing: 8.0),
//         itemCount: 100,
//         itemBuilder: (context, index) {
//           return Container(
//             width: 100,
//             height: 100,
//             color: Colors.yellow,
//           );
//         },
//       ),
//     ),
//   ],
// );

//************* ListView **********
// Container(
//         height: 300,
//         child: ListView(
//           children: [
//             Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.red,
//                 child: Text('COntainer')),
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text('Email'),
//               subtitle: Text('hinakhan@gmail.com'),
//             ),
//             Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.red,
//                 child: Text('COntainer')),
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text('Email'),
//               subtitle: Text('hinakhan@gmail.com'),
//             ),
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text('Email'),
//               subtitle: Text('hinakhan@gmail.com'),
//             ),
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text('Email'),
//               subtitle: Text('hinakhan@gmail.com'),
//             ),
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text('Email'),
//               subtitle: Text('hinakhan@gmail.com'),
//             ),
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text('Password'),
//               subtitle: Text('hinakhan@gmail.com'),
//             ),
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text('Password'),
//               subtitle: Text('hinakhan@gmail.com'),
//             ),
//             ListTile(
//               leading: Icon(Icons.lock),
//               title: Text('Password'),
//               subtitle: Text('hinakhan@gmail.com'),
//             )
//           ],
//         ),
//       ),
