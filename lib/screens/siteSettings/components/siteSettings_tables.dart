import 'package:dashboard/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../../config/constants.dart';

enum tabs {
  siteInfo,
  images,
  features,
  testimonials,
  processes,
  privacity,
  faqs,
  blogLinks,
  plans
}

class SiteSettingsTables extends StatefulWidget {
  const SiteSettingsTables({
    Key key,
    @required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  State<SiteSettingsTables> createState() => _SiteSettingsTablesState();
}

class _SiteSettingsTablesState extends State<SiteSettingsTables> {
  tabs tabIndicator = tabs.siteInfo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Expanded(
                //   child: Container(
                //     padding: const EdgeInsets.all(15),
                //     child: const Center(child: Text(' ')),
                //     decoration: BoxDecoration(
                //       border: Border(
                //         bottom: const BorderSide(color: Colors.lightBlueAccent),
                //         top: BorderSide(
                //           color: Colors.transparent,
                //         ),
                //         left: BorderSide(
                //           color: Colors.transparent,
                //         ),
                //         right: BorderSide(
                //           color: Colors.transparent,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(0);
                    setState(() {
                      tabIndicator = tabs.siteInfo;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.siteInfo
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.siteInfo
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.siteInfo
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.siteInfo
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Site Info',
                        style: TextStyle(
                          color: tabIndicator == tabs.siteInfo
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(1);
                    setState(() {
                      tabIndicator = tabs.images;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.images
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.images
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.images
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.images
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Images',
                        style: TextStyle(
                          color: tabIndicator == tabs.images
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(2);
                    setState(() {
                      tabIndicator = tabs.features;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.features
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.features
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.features
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.features
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Features',
                        style: TextStyle(
                          color: tabIndicator == tabs.features
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(3);
                    setState(() {
                      tabIndicator = tabs.plans;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.plans
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.plans
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.plans
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.plans
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Plans',
                        style: TextStyle(
                          color: tabIndicator == tabs.plans
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),

                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(4);
                    setState(() {
                      tabIndicator = tabs.testimonials;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.testimonials
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.testimonials
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.testimonials
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.testimonials
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Testimonials',
                        style: TextStyle(
                          color: tabIndicator == tabs.testimonials
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(5);
                    setState(() {
                      tabIndicator = tabs.processes;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.processes
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.processes
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.processes
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.processes
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Processes',
                        style: TextStyle(
                          color: tabIndicator == tabs.processes
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(6);
                    setState(() {
                      tabIndicator = tabs.faqs;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.faqs
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.faqs
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.faqs
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.faqs
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'FAQs',
                        style: TextStyle(
                          color: tabIndicator == tabs.faqs
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(7);
                    setState(() {
                      tabIndicator = tabs.privacity;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.privacity
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.privacity
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.privacity
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.privacity
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Privacity & Terms',
                        style: TextStyle(
                          color: tabIndicator == tabs.privacity
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(8);
                    setState(() {
                      tabIndicator = tabs.blogLinks;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.blogLinks
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.blogLinks
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.blogLinks
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.blogLinks
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Blog Links',
                        style: TextStyle(
                          color: tabIndicator == tabs.blogLinks
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: const Center(child: Text(' ')),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.lightBlueAccent),
                        top: BorderSide(
                          color: Colors.transparent,
                        ),
                        left: BorderSide(
                          color: Colors.transparent,
                        ),
                        right: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                controller: widget._pageController,
                children: [
                  Container(
                    child: Column(
                      children: const [
                        CustomTextField(
                          title: 'Site Name',
                          hint: 'Weellu',
                        ),
                        CustomTextField(
                          title: 'Welcome word',
                          hint: 'Bem vindo!',
                        ),
                        CustomTextField(
                          title: 'Description 1',
                          hint: 'Converse de forma descomplicada!',
                        ),
                        CustomTextField(
                          title: 'Description 2',
                          hint:
                              'Interaja com seus amigos, familiares e faça negocios de forma simples e descomplicada. Tudo muito rápido e simples use o weellu no seu dia a dia e seja feliz.',
                        ),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Text(
                              'SOCIAL LINKS',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        CustomTextField(
                          title: 'Facebook',
                          hint: 'Facebook link here...',
                        ),
                        CustomTextField(
                          title: 'Instagram',
                          hint: 'Instagram link here...',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.purple,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.grey,
                  ),
                  Container(
                    color: Colors.brown,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.pink,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
