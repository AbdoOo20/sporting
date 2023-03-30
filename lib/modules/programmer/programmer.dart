// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news/modules/programmer/select%20programer.dart';
import 'package:news/shared/const.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/Components.dart';
import '../../shared/Style.dart';

class Programmer extends StatefulWidget {
  String who;

  Programmer(this.who, {Key? key}) : super(key: key);

  @override
  State<Programmer> createState() => _ProgrammerState();
}

class _ProgrammerState extends State<Programmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: white),
        backgroundColor: primaryColor,
        elevation: 0,
        title: appBarWidget(context),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            navigateAndFinish(context, const SelectProgrammer());
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: sizeFromWidth(context, 1),
                      height: sizeFromHeight(context, 4),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: widget.who == 'abdo'
                                ? const AssetImage("assets/images/back.jpg")
                                : const AssetImage(
                                    "assets/images/back mahm.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      bottom: -sizeFromHeight(context, 13),
                      child: CircleAvatar(
                        radius: sizeFromHeight(context, 9.5),
                        backgroundColor: primaryColor,
                        child: CircleAvatar(
                          radius: sizeFromHeight(context, 10),
                          backgroundColor: primaryColor,
                          backgroundImage: widget.who == 'abdo'
                              ? const AssetImage("assets/images/photo.jpg")
                              : const AssetImage("assets/images/mahm.jpeg"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: sizeFromHeight(context, 12)),
                Container(
                  width: sizeFromWidth(context, 1),
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Column(
                    children: [
                      textWidget(
                        widget.who == 'abdo'
                            ? 'المهندس عبدالرحمن عماد مبرمج التطبيق متخصص فى برمجة تطبيقات الجوال للأندرويد و الأيفون و المسئول عن صيانة و متابعة التطبيق و المشرف على الأعطال الفنية.'
                            : 'المهندس محمود اسماعيل مطور الواجهه الخلفية للتطبيق ومتخصص فى تصميم وبرمجة المواقع الإلكترونية وقواعد البيانات والمسئول عن الواجهه الخلفية للتطبيق.',
                        TextDirection.rtl,
                        null,
                        white,
                        sizeFromWidth(context, 25),
                        FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeFromWidth(context, 1),
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.whatsapp, color: white),
                      textWidget(
                        ' WhatsApp',
                        null,
                        null,
                        white,
                        sizeFromWidth(context, 25),
                        FontWeight.bold,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () async {
                          var url = Uri.parse(
                              'whatsapp://send?phone=${settingModel.whatsNumber}');
                          await launchUrl(url,
                              mode: LaunchMode.externalNonBrowserApplication);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: textWidget(
                            'اضغط هنا للتواصل',
                            null,
                            null,
                            primaryColor,
                            sizeFromWidth(context, 25),
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeFromWidth(context, 1),
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.linkedin, color: white),
                      textWidget(
                        ' Linkedin',
                        null,
                        null,
                        white,
                        sizeFromWidth(context, 25),
                        FontWeight.bold,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () async {
                          var abdo = Uri.parse(
                              'https://www.linkedin.com/in/abdelrahman-emad-045693204/recent-activity/shares/');
                          var hoda = Uri.parse(
                              'https://www.linkedin.com/in/mahmoud-esmail-86a8b1181');
                          if (widget.who == 'abdo') {
                            await launchUrl(abdo,
                                mode: LaunchMode.externalNonBrowserApplication);
                          } else {
                            await launchUrl(hoda,
                                mode: LaunchMode.externalNonBrowserApplication);
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: textWidget(
                            'اضغط هنا لمشاهدة أعمال المبرمج',
                            null,
                            null,
                            primaryColor,
                            sizeFromWidth(context, 25),
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeFromWidth(context, 1),
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.laptopCode, color: white),
                      textWidget(
                        '  Mostaql',
                        null,
                        null,
                        white,
                        sizeFromWidth(context, 25),
                        FontWeight.bold,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () async {
                          var abdo = Uri.parse(
                              'https://mostaql.com/u/Abdo_Emad_208/portfolio');
                          var hoda = Uri.parse(
                              'https://mostaql.com/u/Develper');
                          if (widget.who == 'abdo') {
                            await launchUrl(abdo,
                                mode: LaunchMode.externalNonBrowserApplication);
                          } else {
                            await launchUrl(hoda,
                                mode: LaunchMode.externalNonBrowserApplication);
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: textWidget(
                            'اضغط هنا لمشاهدة أعمال المبرمج',
                            null,
                            null,
                            primaryColor,
                            sizeFromWidth(context, 25),
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
