import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data/user.dart';
import 'chat.dart';

class Inventories extends StatefulWidget {
  final String inventoryName;
  final String inventoryPrice;
  final String inventoryQuantity;
  final String inventoryDescription;
  final User user;
  final String image;
  const Inventories({
    super.key,
    required this.inventoryName,
    required this.inventoryPrice,
    required this.inventoryQuantity,
    required this.inventoryDescription,
    required this.image,
    required this.user,
  });

  @override
  State<Inventories> createState() => _InventoriesState();
}

class _InventoriesState extends State<Inventories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.inventoryName),
          centerTitle: false,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded, size: 20.r),
          ),
          actions: [
            SizedBox(
              width: 52.w,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(
                        user: widget.user,
                      ),
                    ),
                  );
                },
                padding: EdgeInsets.symmetric(
                  vertical: 7.r,
                  horizontal: 10.r,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  side: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Icon(
                    Icons.chat,
                    color: Colors.grey,
                    size: 22.r,
                  ),
                ),
              ),
            ),
            16.horizontalSpace
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300.h,
                  width: double.infinity,
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                30.verticalSpace,
                Text(
                  'Price:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'N ${widget.inventoryPrice}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                10.verticalSpace,
                Text(
                  'Quantity:',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  widget.inventoryQuantity,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                10.verticalSpace,
                Text(
                  'Description:',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  widget.inventoryDescription,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
