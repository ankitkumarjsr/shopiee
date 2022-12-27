
import 'package:flutter/material.dart';
import 'package:shopiee/config/device_size.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.black,
              title: Row(
                children: <Widget>[
                Text(
                  "Shopiee",
                   style: TextStyle(
                      color: Colors.lightBlueAccent, fontWeight: FontWeight.bold,fontSize: 22),
                 ),
                  Text(".in",style: TextStyle(color: Colors.white,fontSize: 18),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                decoration: InputDecoration(

                  contentPadding: const EdgeInsets.all(16.0),
                  // contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),

                  filled: true,
                  // fillColor: Colors.white,
                  labelText: "Search Shopiee.in",
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    color: Colors.white,
                  ),
                  // suffixIcon: Icon(Icons.search_outlined,color: Colors.white),
                  suffixIcon: Container(
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: const Icon(Icons.search_outlined, color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 110);
}
