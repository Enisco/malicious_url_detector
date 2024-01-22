import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malicious_url_detector/url_checker/controller.dart';
import 'package:malicious_url_detector/widget/custom_button.dart';
import 'package:malicious_url_detector/widget/custom_textfield.dart';

class UrlCheckerPage extends StatefulWidget {
  const UrlCheckerPage({super.key});

  @override
  State<UrlCheckerPage> createState() => _UrlCheckerPageState();
}

class _UrlCheckerPageState extends State<UrlCheckerPage> {
  final _controller = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: GetBuilder<HomepageController>(
        init: _controller,
        builder: (_) {
          return Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/webbg.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(size.width * 0.02),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.width * 0.02),
                color: const Color.fromARGB(255, 6, 7, 22).withOpacity(0.8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: size.width * 0.35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "URL Safety Checker",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.w700,
                            height: 1.8,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(height: 40),
                        SizedBox(
                          width: size.width * 0.35,
                          child: Text(
                            "URL Safety Checker URL Safety Checker URL Safety Checker URL Safety Checker URL Safety Checker URL Safety Checker URL Safety Checker URL Safety Checker URL Safety Checker URL Safety Checker URL Safety Checker URL Safety Checker ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.013,
                              fontWeight: FontWeight.w500,
                              height: 1.8,
                              wordSpacing: 1.3,
                            ),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                  SizedBox(width: size.width * 0.02),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(size.width * 0.02),
                      color: Colors.blue.shade800.withOpacity(0.38),
                    ),
                    width: size.width * 0.50,
                    child: Column(
                      children: [
                        Text(
                          "Paste Link Below: ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.w700,
                            height: 1.8,
                            wordSpacing: 1.5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: CustomTextfield(
                            textEditingController: _controller.urlController,
                            hintText: "Enter the link to check here",
                          ),
                        ),
                        const CustomButton(
                          width: 300,
                          height: 45,
                          child: Text(
                            "Check URL",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              height: 1.8,
                              wordSpacing: 1.5,
                            ),
                          ),
                        ),
                        const SizedBox(height: 60),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
