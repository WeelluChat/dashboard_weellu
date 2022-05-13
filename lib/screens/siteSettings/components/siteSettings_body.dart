import 'package:dashboard/config/constants.dart';
import 'package:dashboard/screens/siteSettings/components/siteSettings_tables.dart';
import 'package:flutter/material.dart';

class LandingPageBody extends StatelessWidget {
  const LandingPageBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Settings',
                        style: TextStyle(fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Text('English')),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(),
                // LandingPageSections(),
                SiteSettingsTables(pageController: pageController)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LandingPageSections extends StatelessWidget {
  const LandingPageSections({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: const Text(
              'Features',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const Divider(),
        InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: const Text(
                'Testimonials',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.start,
              ),
            )),
        const Divider(),
        InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: const Text(
                'Processes',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.start,
              ),
            )),
        const Divider(),
        InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: const Text(
                'FAQs',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.start,
              ),
            )),
        const Divider(),
        InkWell(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Blog Links',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.start,
              )),
        ),
      ],
    );
  }
}
