import 'package:flutter/material.dart';
// import '../../../components/place_card.dart';
// import '../../../constants.dart';
// import '../../../models/TravelSpot.dart';
// import '../../../size_config.dart';

class Product {
  final int id;
  final String title;
  final String images;

  Product({
    required this.id,
    required this.images,
    required this.title,
  });
}

List<Product> prd = [
  Product(
      id: 1, images: "assets/images/session_3.jpg", title: "Performance Guide"),
  Product(
      id: 2, images: "assets/images/session_2.jpg", title: "Health & fitness"),
  Product(id: 3, images: "assets/images/session_5.jpg", title: "Yoga Classes"),
  Product(id: 4, images: "assets/images/session_4.jpg", title: "Diet"),
  Product(
      id: 5,
      images: "assets/images/session_6.jpg",
      title: "Safety & Precautions"),
  Product(
      id: 6,
      images: "assets/images/session_1.jpg",
      title: "Tricks & Techniques"),
];

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: 6,
        itemBuilder: (ctx, i) {
          return Card(
            child: Container(
              height: 290,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          prd[i].images,
                          // Image.network(
                          //   'https://tech.pelmorex.com/wp-content/uploads/2020/10/flutter.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        prd[i].title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Row(
                      //   children: const [
                      //     Text(
                      //       'Subtitle',
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 15,
                      //       ),
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 5,
          mainAxisExtent: 264,
        ),
      ),
    );
  }
}

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: SizeConfig.screenWidth,
//       child: Padding(
//         padding:
//             EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.only(bottom: 25),
//             child: Wrap(
//               alignment: WrapAlignment.spaceBetween,
//               runSpacing: 25,
//               children: [
//                 ...List.generate(
//                   travelSpots.length,
//                   (index) => PlaceCard(
//                     travelSport: travelSpots[index],
//                     isFullCard: true,
//                     press: () {},
//                   ),
//                 ),
//                 AddNewPlaceCard(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AddNewPlaceCard extends StatelessWidget {
//   const AddNewPlaceCard({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: getProportionateScreenWidth(350),
//       width: getProportionateScreenWidth(158),
//       decoration: BoxDecoration(
//         color: Color(0xFF6A6C93).withOpacity(0.09),
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(
//           width: 2,
//           color: Color(0xFFEBE8F6),
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//               height: getProportionateScreenWidth(53),
//               width: getProportionateScreenWidth(53),
//               child: TextButton(
//                 // style: (),
//                 // padding: EdgeInsets.zero,
//                 // shape: RoundedRectangleBorder(
//                 // borderRadius: BorderRadius.circular(60),
//                 // ),
//                 onPressed: () {},
//                 child: Icon(
//                   Icons.add,
//                   size: getProportionateScreenWidth(35),
//                   color: Colors.white,
//                 ),
//               )),
//           VerticalSpacing(of: 10),
//         ],
//       ),
//     );
//   }
// }
