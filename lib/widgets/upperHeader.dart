import 'package:flutter/material.dart';
import 'package:web_screen_flutter/strings.dart';

class UpperHeader extends StatelessWidget {
  const UpperHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              "images/logo.png",
              height: 60,
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffF0F0F0),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 15),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/search_icon.png",
                        height: 20,
                        color: Colors.grey,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: "Search City, neighborhood , @Username",
                    hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Color(0xff828282),
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Row(
            children: List.generate(
                5,
                (index) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        appbarOptions[index],
                        style: const TextStyle(
                            fontSize: 15,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w600),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
