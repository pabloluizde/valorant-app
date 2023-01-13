import 'package:flutter/material.dart';
import 'package:vava_app/home/home_page.dart';
import 'package:vava_app/started/controller.dart';
import 'package:vava_app/started/store/carrousel_store.dart';
import 'package:vava_app/started/widgets/button.dart';
import '../../../themes/app_colors.dart';

class CarrouselForm extends StatefulWidget {
  const CarrouselForm({super.key});

  @override
  State<CarrouselForm> createState() => _CarrouselFormState();
}

class _CarrouselFormState extends State<CarrouselForm> {
  final store = CarrouselStore();
  final PageController pageController = PageController(
    viewportFraction: 1,
  );
  @override
  void initState() {
    pageController.addListener(() {
      int next = pageController.page!.round();
      if (store.current != next) {
        setState(() {
          store.current = next;
        });
      }
      print(store);
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.60,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: PageView.builder(
              itemCount: CarouselController().lista.length,
              controller: pageController,
              itemBuilder: (_, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              CarouselController().lista[index]['image']))),
                );
              }),
        ),
        indicator(store.current),
        aaaa(store.current),
        iiii(size, store.current, context)
      ],
    );
  }
}

Widget iiii(Size size, int value, BuildContext context) {
  return Column(children: [
    value == 2
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(
                  size: size,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }),
            ],
          )
        : Container()
  ]);
}

Widget aaaa(dynamic model) {
  return SizedBox(
    width: double.infinity,
    height: 200,
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '${CarouselController().lista[model]['text']}',
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
      ]),
    ),
  );
}

Widget indicator(dynamic model) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: CarouselController()
          .lista
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(3.0),
              child: AnimatedContainer(
                height: 10,
                width: model == e['id'] ? 50 : 20,
                duration: Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: model == e['id'] ? AppColors.red : AppColors.indicator,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  boxShadow: model == e['id']
                      ? [
                          BoxShadow(
                            offset: Offset(0, 0),
                            color: AppColors.red,
                            blurRadius: 13.0,
                          ),
                        ]
                      : [],
                ),
              ),
            ),
          )
          .toList(),
    ),
  );
}
