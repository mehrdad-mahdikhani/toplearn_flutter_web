import 'package:flutter/material.dart';

class DetailDesktopScreen extends StatelessWidget {
  const DetailDesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("عنوان"),
                          Spacer(),
                          Flexible(child: Text("title")),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("توضیحات"),
                          Spacer(),
                          Flexible(child: Text("description")),
                        ]),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.amber,
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.save),
          ),
        ),
      ),
    );
  }
}
