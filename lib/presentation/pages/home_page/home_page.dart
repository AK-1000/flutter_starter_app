import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter_app/app/colors.dart';
import 'package:starter_app/app/constants.dart';
import 'package:starter_app/core/helpers/dialogs.dart';
import 'package:starter_app/presentation/widgets/app_bars/custom_sliver_app_bar.dart';
import 'package:starter_app/presentation/widgets/text_fields/app_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => exitDialog(),
      child: Scaffold(
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              backgroundColor: primaryColor,
              centerTitle: true,
              title: 'Apartments',
              pinned: true,
              titleStyle: const TextStyle(color: Colors.white),
              actions: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.logout,color: Colors.white,))
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: oneH(context)),
                child: const AppTextField(
                  hintText: 'Search apartments',
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: oneW(context) * 5,
                vertical: oneH(context) * 2,
              ),
              sliver: SliverList.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: oneH(context)),
                      height: oneH(context) * 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.amber)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                            child: Image(
                              image: const AssetImage(
                                'assets/images/jpg/home.jpg',
                              ),
                              width: oneW(context) * 40,
                              height: oneH(context) * 25,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.only(left: oneH(context) * 0.5),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Price: 240000 \$'),
                                Text(
                                    'New Apartment for Sale in Jal el Dib شقة جديدة للبيع في جل الديب'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.maps_home_work_sharp),
                                    Text('Beirut, Hamraa')
                                  ],
                                ),
                              ],
                            ),
                          )),
                          Container(
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_border),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        )),
      ),
    );
  }
}
