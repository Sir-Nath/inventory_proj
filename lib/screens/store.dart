import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../commons/blue_button.dart';
import '../data/user.dart';
import '../notifier.dart/inventory_notifier.dart';
import 'inventories.dart';

class Store extends StatelessWidget {
  final User user;
  Store({
    required this.user,
    super.key,
  });
  final products = const <String>[
    'cam',
    'frag',
    'ip14',
    'iw',
    'iw2',
    'nike',
    'nike2',
    'nike3',
  ];

  final productsName = const <String>[
    'Camera',
    'Fragrance',
    'Iphone 14',
    'Iwatch',
    'Iwatch 2',
    'Nike',
    'Nike 2',
    'Nike 3',
  ];

  final productModel = <InventoryModel>[
    InventoryModel(
      name: 'Camera',
      description: 'This is an imported camera with 4k resolution',
      price: '1000',
      quantity: '10',
    ),
    InventoryModel(
      name: 'Fragrance',
      description: 'Improve your smell with this fragrance',
      price: '1000',
      quantity: '10',
    ),
    InventoryModel(
      name: 'Iphone 14',
      description: 'Iphone 14',
      price: '1000',
      quantity: '10',
    ),
    InventoryModel(
      name: 'Iwatch',
      description: 'Iwatch',
      price: '1000',
      quantity: '10',
    ),
    InventoryModel(
      name: 'Iwatch 2',
      description: 'Iwatch 2',
      price: '1000',
      quantity: '10',
    ),
    InventoryModel(
      name: 'Nike',
      description: 'Nike',
      price: '1000',
      quantity: '10',
    ),
    InventoryModel(
      name: 'Nike 2',
      description: 'Nike 2',
      price: '1000',
      quantity: '10',
    ),
    InventoryModel(
      name: 'Nike 3',
      description: 'Nike 3',
      price: '1000',
      quantity: '10',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 50.h,
            left: 16,
            right: 16,
            bottom: 10,
          ),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage('assets/dp.jpg'),
                    radius: 50.r,
                  ),
                  10.verticalSpace,
                  Text(
                    "${user.username} Stores",
                    style: TextStyle(
                      fontSize: 14.spMax,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BlueButton(
                        width: .4.sw,
                        text: 'Edit Profile',
                        onPressed: () {},
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: .4.sw,
                        height: 48.h,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: BorderSide(
                            color: Colors.black.withOpacity(.6),
                          ),
                        ),
                        child: Text(
                          'About Us',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.spMin,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              30.verticalSpace,
              Row(
                children: [
                  const Icon(Icons.push_pin),
                  20.horizontalSpace,
                  Text(
                    "Uploaded Items",
                    style: TextStyle(
                      color: const Color(0xffA1A1A1),
                      fontSize: 14.spMax,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    products.length,
                    (index) {
                      return GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Inventories(
                              inventoryDescription:
                                  productModel[index].description,
                              inventoryName: productModel[index].name,
                              inventoryPrice: productModel[index].price,
                              inventoryQuantity: productModel[index].quantity,
                              user: user,
                              image: 'assets/store/${products[index]}.jpg',
                            ),
                            // ChatScreen(
                            //   user: user,
                            // ),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(width: .3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                    'assets/store/${products[index]}.jpg'),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: double.maxFinite,
                                  height: 30,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    productsName[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
