// import 'package:flutter/material.dart';
// import 'package:proyek_akhir_flutter_pemula_dicoding/view/detail_page.dart';
// import 'package:proyek_akhir_flutter_pemula_dicoding/view/wisata.dart'; // Tambahkan file wisata.dart
// import 'package:proyek_akhir_flutter_pemula_dicoding/view/kuliner.dart'; // Tambahkan file kuliner.dart
// import 'package:proyek_akhir_flutter_pemula_dicoding/model/page.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text('Home'),
//           ),
//           body: LayoutBuilder(
//             builder: (BuildContext context, BoxConstraints constraints) {
//               if (constraints.maxWidth <= 600) {
//                 return const PageAppGrid(gridCount: 2);
//               } else {
//                 return const PageAppGrid(gridCount: 4);
//               }
//             },
//           ),
//         );
//       },
//     );
//   }
// }

// class PageAppGrid extends StatelessWidget {
//   final int gridCount;

//   const PageAppGrid({Key? key, required this.gridCount}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(24.0),
//       child: GridView.count(
//         crossAxisCount: gridCount,
//         crossAxisSpacing: 16,
//         mainAxisSpacing: 16,
//         children: pageAppList.map((place) {
//           int index = pageAppList.indexOf(place); // Mendapatkan index item
//           return InkWell(
//             onTap: () {
//               if (index == 0) {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return WisataScreen(); // Arahkan ke wisata.dart
//                 }));
//               } else if (index == 1) {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return KulinerScreen(); // Arahkan ke kuliner.dart
//                 }));
//               } else {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return DetailScreenPage(place: place); // Default jika bukan foto 1 atau 2
//                 }));
//               }
//             },
//             child: Card(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Expanded(
//                     child: Image.asset(
//                       place.imageAsset,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text(
//                       place.name,
//                       style: const TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// class PageAppList extends StatelessWidget {
//   const PageAppList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ListView.builder(
//         itemBuilder: (context, index) {
//           final PageApp place = pageAppList[index];
//           return InkWell(
//             onTap: () {
//               if (index == 0) {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return WisataScreen(); // Arahkan ke wisata.dart
//                 }));
//               } else if (index == 1) {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return KulinerScreen(); // Arahkan ke kuliner.dart
//                 }));
//               } else {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return DetailScreenPage(place: place); // Default jika bukan foto 1 atau 2
//                 }));
//               }
//             },
//             child: Card(
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Expanded(
//                     flex: 1,
//                     child: Image.asset(place.imageAsset),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//         itemCount: pageAppList.length,
//       ),
//     );
//   }
// }
