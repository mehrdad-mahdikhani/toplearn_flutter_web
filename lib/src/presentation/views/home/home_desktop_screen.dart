import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:web_application/src/core/app_router.dart';

class HomeDesktopScreen extends StatelessWidget {
  const HomeDesktopScreen({Key? key}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("آنلاین"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("لوکال"),
                    ),
                  ],
                ),
              ),
              const VerticalDivider(),
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 600,
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              AppRouter.appRouter.navigateTo(context, '/detail',
                                  transition: TransitionType.fadeIn);
                            },
                            child: Container(
                              height: 300,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("عنوان"),
                                          Spacer(),
                                          Flexible(child: Text("title")),
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("توضیحات"),
                                          Spacer(),
                                          Flexible(child: Text("description")),
                                        ]),
                                    const Flexible(child: Text("author"))
                                  ]),
                            ),
                          );
                        }),
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
