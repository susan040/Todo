// import 'package:flutter/material.dart';
// import 'package:todo/data/data.dart';
// import 'package:todo/model/model.dart';

// class Order extends StatelessWidget {
//   const Order({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Orders"),
//       ),
//       body: ListView.builder(itemCount: orderData.length,
//        itemBuilder: (context, index){
//         OrdersList ordersList = orderData[index];
//         return Orders(image: ordersList.image, meat: ordersList.meat, quantity: ordersList.quantity, time: ordersList.time, price: ordersList.price);
//       })
//     );
//   }
// }

// class Orders extends StatelessWidget {
//   const Orders({
//     super.key, required this.image, required this.meat, required this.quantity, required this.time, required this.price,
//   });
//   final String image;
//   final String meat;
//   final String quantity;
//   final String time;
//   final String price;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 12, top: 20, right: 12),
//           child: Row(
//             children: [
//               Container(
//                 height: 110,
//                 width: 90,
//                 decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.only(topLeft:Radius.circular(10), bottomLeft: Radius.circular(10)),
//                   image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage(
//                       image
//                     )
//                   )
//                 )
//               ),
        
//               Container(
//                 height: 110,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(topRight:Radius.circular(10), bottomRight: Radius.circular(10)),
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 10.0,
//                       color: Color.fromARGB(255, 195, 192, 192),
//                     )
//                   ]
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           const SizedBox(height: 10),
//                           Text(meat, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                           const SizedBox(width: 5),
//                           Text(quantity, style: const TextStyle(fontSize: 16, color: Colors.grey)),
//                           const SizedBox(height: 15),
//                         ],
//                       ),
//                       Text(time, style: const TextStyle(fontSize: 16, color: Colors.grey)),
//                       const SizedBox(height: 7),
//                       Row(
//                         children: [
//                           const Text("Paid", style: TextStyle(fontSize: 16, color: Colors.grey)),
//                           Text(price, style: const TextStyle(fontSize: 16, color: Colors.red)),
//                           const SizedBox(width: 22),
//                           SizedBox(
//                             width: 120,
//                             height: 30,
//                             child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.red
//                               ),
//                               onPressed: (){}, 
//                             child: const Text("Delivered", style: TextStyle(fontSize: 14, color: Colors.white))),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }