import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../commons/blue_button.dart';
import '../commons/entry.dart';

class AddInventoryScreen extends StatefulWidget {
  const AddInventoryScreen({super.key});

  @override
  State<AddInventoryScreen> createState() => _AddInventoryScreenState();
}

class _AddInventoryScreenState extends State<AddInventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Inventory'),
          centerTitle: false,
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Add inventory to your store'),
                30.verticalSpace,
                Entry(
                  label: 'Inventory Name',
                  hintText: 'Enter inventory name',
                  controller: inventoryNameC,
                  focusNode: inventoryNameF,
                ),
                20.verticalSpace,
                Entry(
                  label: 'Inventory Price',
                  hintText: 'Enter inventory price',
                  controller: inventoryPriceC,
                  focusNode: inventoryPriceF,
                ),
                20.verticalSpace,
                Entry(
                  label: 'Inventory Quantity',
                  hintText: 'Enter inventory quantity',
                  controller: inventoryQuantityC,
                  focusNode: inventoryQuantityF,
                ),
                20.verticalSpace,
                Entry(
                  label: 'Inventory Description',
                  hintText: 'Enter inventory description',
                  controller: inventoryDescriptionC,
                  focusNode: inventoryDescriptionF,
                ),
                20.verticalSpace,
                30.verticalSpace,
                BlueButton(
                  width: 1.sw,
                  text: 'Add Inventory',
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    Navigator.pop(context);
                  },
                ),
                50.verticalSpace
              ],
            ),
          ),
        ),
      ),
    );
  }

  final inventoryNameC = TextEditingController();
  final inventoryPriceC = TextEditingController();
  final inventoryQuantityC = TextEditingController();
  final inventoryDescriptionC = TextEditingController();

  final inventoryNameF = FocusNode();
  final inventoryPriceF = FocusNode();
  final inventoryQuantityF = FocusNode();
  final inventoryDescriptionF = FocusNode();
}
