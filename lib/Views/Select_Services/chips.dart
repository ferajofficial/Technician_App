// import 'package:flutter/material.dart';

// class FilterChipSearchDelegate extends SearchDelegate<String> {
//   final List<String> allChips = [
//     'Chip 1',
//     'Chip 2',
//     'Chip 3',
//     'Chip 4',
//   ];

//   List<String> filteredChips = [];

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, '');
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     filteredChips = allChips
//         .where((chip) => chip.toLowerCase().contains(query.toLowerCase()))
//         .toList();

//     return ListView.builder(
//       itemCount: filteredChips.length,
//       itemBuilder: (context, index) {
//         return FilterChip(
//           label: Text(filteredChips[index]),
//           onSelected: (bool value) {},
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     filteredChips = allChips
//         .where((chip) => chip.toLowerCase().contains(query.toLowerCase()))
//         .toList();

//     return ListView.builder(
//       itemCount: filteredChips.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(filteredChips[index]),
//           onTap: () {
//             query = filteredChips[index];
//             showResults(context);
//           },
//         );
//       },
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("Filter Chip Search"),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               var context;
//               showSearch(
//                 context: context,
//                 delegate: FilterChipSearchDelegate(),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             FilterChip(
//               label: Text('Chip 1'),
//               onSelected: (bool value) {},
//             ),
//             FilterChip(
//               label: Text('Chip 2'),
//               onSelected: (bool value) {},
//             ),
//             FilterChip(
//               label: Text('Chip 3'),
//               onSelected: (bool value) {},
//             ),
//             FilterChip(
//               label: Text('Chip 4'),
//               onSelected: (bool value) {},
//             ),
//           ],
//         ),
//       ),
//     ),
//   ));
// }
