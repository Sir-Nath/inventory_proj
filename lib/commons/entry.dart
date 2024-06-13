// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Entry extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final bool readOnly;
  final Function()? onTap;

  const Entry({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.focusNode,
    this.readOnly = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12.spMax,
            fontWeight: FontWeight.w700,
          ),
        ),
        10.verticalSpace,
        SizedBox(
          height: 52.h,
          child: TextField(
            controller: controller,
            onTap: onTap,
            readOnly: readOnly,
            focusNode: focusNode,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                ),
              ),
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xff103EEE),
                  width: 1,
                ),
              ),
              labelStyle: TextStyle(
                fontSize: 14.spMax,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
