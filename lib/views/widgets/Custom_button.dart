import 'package:flutter/material.dart';

import 'constance.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap, required this.isloading});
  final bool isloading;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: Kprimarycolor, borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: isloading
                ? const CircularProgressIndicator(
                    color: Colors.black,
                  )
                : const Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
